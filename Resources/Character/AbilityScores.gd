extends SkillResource
class_name AbilityScores


@export var strength: Proficiency
@export var dexterity: Proficiency
@export var constitution: Proficiency
@export var intelligence: Proficiency
@export var wisdom: Proficiency
@export var charisma: Proficiency

func _init() -> void:
	strength.SkillResource.new("Strength",0, untrained)
	dexterity.SkillResource.new("Dexterity",0, untrained)
	constitution.SkillResource.new("Constitution",0, untrained)
	intelligence.SkillResource.new("Intelligence",0, untrained)
	wisdom.SkillResource.new("Wisdom",0, untrained)
	charisma.SkillResource.new("Strength",0, untrained)
