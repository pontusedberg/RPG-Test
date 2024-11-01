extends CharacterBody2D
class_name Character
@export var stats: Stats
@export var abilityscores: AbilityScores
@export var proficiency: Proficiency
@export var ancestry: Ancestry
@export var background: Background
@export var charclass: CharClass

@export var progress_bar: ProgressBar
@export var hurtbox: CollisionShape2D
@export var curent_items: Items:
	set(value):
		curent_items = value
@export var current_weapon: Weapons:
	set(value):
		current_weapon = value
var dice: Dice
var rng = RandomNumberGenerator.new()
signal CharDamage(value)
signal CharAttack(value)

const PROFICIENCY_LEVEL = "Trained"

func _ready() -> void:
	progress_bar.max_value = stats.Max_health
	progress_bar.value = stats.Health


func _physics_process(delta: float) -> void:
	character_movement()
	character_attack()

func character_movement() -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

	if direction != Vector2.ZERO:
		velocity = direction * stats.Speed
		move_and_slide()
		
		# Update rotation based on movement direction
		rotation = direction.angle()


func character_attack() -> void:
	if Input.is_action_just_pressed("ui_accept"):
		print("Attack Triggered!")
		
		if current_weapon != null:
			var weapon_name = current_weapon.name
			var damage_info = get_weapon_damage_info()
			print("The weapon \"" + weapon_name + "\" was used, it has the properties:\n" + damage_info)
			
			var is_melee = true  # Set this based on the weapon type
			var strike_modifier = calculate_strike_modifier(current_weapon, is_melee)
			var strike_damage = calculate_strike_damage(current_weapon, is_melee)
			
			print("Strike Modifier: ", strike_modifier)
			print("Strike Damage: ", strike_damage)
			
			var attack_roll = calculate_attack_roll(is_melee)
			print("Attack Roll: ", attack_roll)
		else:
			print("No weapon equipped")

func calculate_attack_roll(is_melee: bool, finesse: bool = false) -> int:
	var attribute_modifier = get_attribute_modifier(is_melee)
	var proficiency_bonus = proficiency.get_proficiency_bonus(PROFICIENCY_LEVEL)
	var attack_roll = rng.randi_range(1, 20) + attribute_modifier + proficiency_bonus + get_total_bonus()
	return attack_roll

func get_attribute_modifier(is_melee: bool) -> int:
	return abilityscores.AbilityScores_Dict["Strength"] if is_melee else abilityscores.AbilityScores_Dict["Dexterity"]

func get_total_bonus() -> int:
	return get_highest_bonus(stats.CircumstanceBonusArray) + get_highest_bonus(stats.ItemBonusArray) + get_highest_bonus(stats.StatusBonusArray)

func get_highest_bonus(bonuses: Array) -> int:
	return max(bonuses) if bonuses.size() > 0 else 0

func _on_mele_attack_body_entered(body: Node2D) -> void:
	if body.name == 'Enemy':
		print("Enemy Detected")
		emit_signal("CharDamage", 10)

func calculate_melee_damage() -> int:
	return calculate_strike_damage(current_weapon, true)

func get_weapon_damage_info() -> String:
	if current_weapon == null:
		return "No weapon equipped"
	var damage_info = ""
	var damage_types = current_weapon.damage_type.damage_types
	for damage_type in damage_types.keys():
		pass
	return damage_info.strip_edges()

func calculate_saving_throw(saving_throw_type: String) -> int:
	var attribute_modifier = 0
	var proficiency_bonus = proficiency.get_proficiency_bonus(PROFICIENCY_LEVEL)
	
	match saving_throw_type:
		"Fortitude":
			attribute_modifier = abilityscores.AbilityScores_Dict["Constitution"]
		"Reflex":
			attribute_modifier = abilityscores.AbilityScores_Dict["Dexterity"]
		"Will":
			attribute_modifier = abilityscores.AbilityScores_Dict["Wisdom"]
		_:
			return 0  # Invalid saving throw type
	
	var total_bonus = get_total_bonus()
	return attribute_modifier + proficiency_bonus + total_bonus

func calculate_strike_modifier(weapon: Weapons, is_melee: bool) -> int:
	var attribute_modifier = get_attribute_modifier(is_melee)
	var proficiency_bonus = proficiency.get_proficiency_bonus(PROFICIENCY_LEVEL)
	var item_bonus = weapon.PotencyRune.value if weapon.PotencyRune else 0
	var total_bonus = get_total_bonus()
	return attribute_modifier + proficiency_bonus + item_bonus + total_bonus

func calculate_strike_damage(weapon: Weapons, is_melee: bool) -> int:
	var total_damage = weapon.dice.roll()
	total_damage += get_attribute_modifier(is_melee)
	var item_bonus = weapon.PotencyRune.value if weapon.PotencyRune else 0
	total_damage += item_bonus + get_total_bonus()
	return total_damage
