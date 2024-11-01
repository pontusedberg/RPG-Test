extends Resource
class_name Proficiency

# Constants for each proficiency level's nested dictionary
const UNTRAINED = {"value": 0, "is_trained": false}
const TRAINED = {"value": 2, "is_trained": true}
const EXPERT = {"value": 4, "is_trained": true}
const MASTER = {"value": 6, "is_trained": true}
const LEGENDARY = {"value": 8, "is_trained": true}

# Final dictionary combining each proficiency level
const PROFICIENCYARRAY: Array = [UNTRAINED, TRAINED, EXPERT, MASTER, LEGENDARY]
const PROFICIENCYDICT: Dictionary = {
	"Untrained": PROFICIENCYARRAY[0],
	"Trained": PROFICIENCYARRAY[1],
	"Expert": PROFICIENCYARRAY[2],
	"Master": PROFICIENCYARRAY[3],
	"Legendary": PROFICIENCYARRAY[4]
}

@export var ProficiencyDict = PROFICIENCYDICT

# Method to get proficiency bonus based on level
func get_proficiency_bonus(level: String) -> int:
	if level in ProficiencyDict:
		return ProficiencyDict[level]["value"]
	return 0
