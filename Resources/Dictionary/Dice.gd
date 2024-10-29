extends Resource
class_name Dice

@export var sides: int

func roll() -> int:
	var rng = RandomNumberGenerator.new()
	return rng.randi_range(1, sides)
