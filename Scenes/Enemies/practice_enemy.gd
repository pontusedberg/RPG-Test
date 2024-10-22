extends Node2D

@onready var animation_player : = $AnimationPlayer

func take_damage(amount: int) -> void:
	print("Damage: ", amount)
