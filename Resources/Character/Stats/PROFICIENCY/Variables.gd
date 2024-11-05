extends Resource
class_name ProficiencyTypes
@export var Name: String = ""
@export var IsTrained: bool = false
@export var Value: int = 0
@export_multiline var Description: String = ""


func _init(name: String = "",value:int  = 0, IsTrained: bool = false, Description: String = ""):
	self.name = ""
	self.value = 0
	self.isTrained = false
	self.Description = ""
