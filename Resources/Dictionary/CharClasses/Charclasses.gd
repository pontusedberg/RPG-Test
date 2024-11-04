extends Proficiency
class_name CharClass

@export var description: String
@export var key_ability: String
@export var hitpoints: int
@export var perception: String
@export var saving_throws: Dictionary = {} # Dictionary to hold proficiency areas and their levels
@export var skills: Dictionary = {} # Dictionary to hold proficiency areas and their levels
@export var attacks: Dictionary = {} # Dictionary to hold proficiency areas and their levels
@export var defenses: Dictionary = {} # Dictionary to hold proficiency areas and their levels

# Initialize the skills dictionary with default proficiency levels
func _init():
	var stats_main = StatsMain.new()
	var default_proficiency = Proficiency.new()
	for skill in stats_main.StatsSkills.keys():
		skills[skill] = default_proficiency.proficiency_levels
