extends CharacterBody2D
class_name Character

@export var stats: Stats
@export var progress_bar : ProgressBar
@export var hurtbox : CollisionShape2D
@export var curent_items: Items:
	set(value):
		curent_items = value
@export var current_weapon: Weapons:
	set(value):
		current_weapon = value
		if current_weapon != null:
			set_damage(current_weapon.damage_type)

func set_damage(amount):
	damage = current_weapon.damage_type
	pass

var dice : Dices
var rng = RandomNumberGenerator.new()
signal CharDamage(value)
signal CharAttack(value)

func _ready() -> void:
	progress_bar.max_value = stats.Max_health
	progress_bar.value = stats.Health
	print("WIll is: ")
	print(stats.WillDC )
	pass

func _physics_process(delta: float) -> void:
	character_movement()
	character_attack()

func character_movement() -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

	if direction != Vector2.ZERO:
		rotation = direction.angle()
		direction = direction.normalized()
		velocity = direction * stats.Speed
		move_and_slide()
	else:
		velocity = Vector2.ZERO
		move_and_slide()
func character_attack() -> void:
	if Input.is_action_just_pressed("ui_accept"):
		print("Attack Triggered!")
		emit_signal("CharAttack",1)
		emit_signal("CharDamage",1)
		print(calculate_attack_roll(true))
func player():
	pass
func calculate_attack_roll(is_melee: bool, finesse: bool = false) -> int:
	var attribute_modifier = 0
	# Use Strength for melee, or Dexterity for finesse weapons or ranged attacks
	if is_melee:
		attribute_modifier = (stats.Dexterity)
	else:
		attribute_modifier = stats.Dexterity  # Ranged attacks use Dexterity
	# d20 roll + attribute modifier + proficiency + other bonuses
	var AttackRoll = randi() % 20 + 1 + attribute_modifier + stats.Proficiency + get_total_bonus()	
	# Apply penalties if needed (add logic for penalties here if you have them)
	# For example: roll -= some_penalty_value
	return AttackRoll
func get_total_bonus() -> int:
	var total_bonus = 0
	
	# Get highest bonus from each category
	var highest_circumstance = get_highest_bonus(stats.CircumstanceBonusArray)
	var highest_item = get_highest_bonus(stats.ItemBonusArray)
	var highest_status = get_highest_bonus(stats.StatusBonusArray)
	
	# Add the highest bonuses from each category
	total_bonus += highest_circumstance
	total_bonus += highest_item
	total_bonus += highest_status
	
	return total_bonus
func get_highest_bonus(bonuses: Array) -> int:
	if bonuses.size() > 0:
		return max(bonuses)
	return 0
func _on_mele_attack_body_entered(body: Node2D) -> void:
	if body.name == 'Enemy':
		print("Enemy Detected")
		emit_signal("CharDamage", 10)

func calculate_melee_damage(weapon_damage_die: int) -> int:
	damage = weapon_damage_die + stats.Strength + get_total_bonus()	
	# Apply penalties if needed (add logic for penalties here if you have them)
	return damage
var damage = weapon_damage_die + stats.Strength + get_total_bonus
