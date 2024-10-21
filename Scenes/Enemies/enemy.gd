extends CharacterBody2D
class_name  Enemy
signal damage(value)
@export var stats : Stats


func _on_player_detector_body_entered(body: Node2D) -> void:
	if body.name == "Character":
		emit_signal("EnemyDamage")


func _on_character_damage(value: Variant) -> void:
	print("Damage Detected")
