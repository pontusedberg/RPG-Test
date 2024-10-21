extends CharacterBody2D
class_name Character
@export var stats : Stats
@export var damagetype : DamageType
@export var attack : Attack
var dice : Dice

func _physics_process(delta: float) -> void:
	character_movement()
	character_attack()

func character_movement() -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

	if direction != Vector2.ZERO:
		direction = direction.normalized()
		velocity = direction * stats.Speed
		rotation = direction.angle()
		move_and_slide()
	else:
		velocity = Vector2.ZERO
		move_and_slide()

func character_attack() -> void:
	if Input.is_action_just_pressed("ui_accept"):
		print("Attack Triggered!")
		attack.calculate_attack_roll(true)

func _ready() -> void:
	stats.Dexterity += 10
	print("Dexterity is: " + str(stats.Dexterity))
