extends Proficiency
class_name SkillResource
# Declare the properties you want to export



@export var proficiency: Proficiency

# Optional: You can add an _init function if you want default values
func _init(name: String = "", value: int = 0, proficiency: ProficiencyTypes = untrained):
	self.name = name
	self.value = value
	self.proficiency = untrained
