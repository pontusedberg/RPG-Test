extends Resource
class_name Variables
@export var name: String = ""
@export var isTrained: bool = false
@export var value: int = 0


func _int(name = "",value = 0, isTrained = false):
	self.name = ""
	self.value = 0
	self.isTrained = false
