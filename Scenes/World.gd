extends Node2D
var character: Character
var stats: Stats

func _ready():
	pass

func _process(delta: float) -> void:
	pass



func _on_plate_1_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		print("10")
		stats.Speed = +10
	



func _on_plate_2_body_entered(body: Node2D) -> void:
	print("2")
	if body.has_method("player"):
		print("-10")
		stats.Speed = -10
