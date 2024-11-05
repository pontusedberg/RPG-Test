extends Resource
class_name ProficiencyTypes

@export var name: String = ""
@export var value: int = 0
@export var Istrained: bool = false

func _init(name: String = "", value: int = 0, Istrained: bool = false):
	self.name = name
	self.value = value
	self.Istrained = Istrained
