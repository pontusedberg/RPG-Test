extends Resource
class_name Dice

@export var Sides: int
@export var Amount: int = 1  # Default to 1 if not specified

func roll() -> int:
	var rng = RandomNumberGenerator.new()
	var total = 0
	for i in range(Amount):
		total += rng.randi_range(1, Sides)
	return total
