extends Resource
class_name Dice
var rng = RandomNumberGenerator.new()

@export var D20: int = (rng.randi() % 20 + 1)
@export var D12: int = (rng.randi() % 12 + 1)
@export var D10: int = (rng.randi() % 10 + 1)
@export var D8: int = (rng.randi() % 8 + 1)
@export var D6: int = (rng.randi() % 6 + 1)
@export var D4: int = (rng.randi() % 4 + 1)
