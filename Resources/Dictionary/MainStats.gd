extends Proficiency
class_name StatsMain

# Define constants for each stat and skill
const STRENGTH = "Strength"
const DEXTERITY = "Dexterity"
const CONSTITUTION = "Constitution"
const INTELLIGENCE = "Intelligence"
const WISDOM = "Wisdom"
const CHARISMA = "Charisma"

const ACROBATICS = "Acrobatics"
const ARCANA = "Arcana"
const ATHLETICS = "Athletics"
const CRAFTING = "Crafting"
const DECEPTION = "Deception"
const DIPLOMACY = "Diplomacy"
const INTIMIDATION = "Intimidation"
const LORE_CRYPTOGRAPHY = "Lore_Cryptography"
const MEDICINE = "Medicine"
const NATURE = "Nature"
const OCCULTISM = "Occultism"
const PERFORMANCE = "Performance"
const RELIGION = "Religion"
const SOCIETY = "Society"
const STEALTH = "Stealth"
const SURVIVAL = "Survival"
const THIEVERY = "Thievery"

# Group constants into lists
const ConstStats = [
	STRENGTH, DEXTERITY, CONSTITUTION, INTELLIGENCE, WISDOM, CHARISMA,
	ACROBATICS, ARCANA, ATHLETICS, CRAFTING, DECEPTION, DIPLOMACY,
	INTIMIDATION, LORE_CRYPTOGRAPHY, MEDICINE, NATURE, OCCULTISM,
	PERFORMANCE, RELIGION, SOCIETY, STEALTH, SURVIVAL, THIEVERY
]

# Create an instance of the Proficiency class to use its default proficiency levels
var default_proficiency = Proficiency.new()

# Variables for each stat and skill
var StatsValues = {}
var StatsProficiencies = {}

# Function to initialize variables and proficiency levels
func initialize_stats():
	for stat in ConstStats:
		StatsValues[stat] = 0
		StatsProficiencies[stat] = default_proficiency.proficiency_levels.duplicate()

# Call the initialization function to set up default values
@export var StatsAttributesArray: Array[Proficiency] = [
	
]

# Group into dictionaries
@export var StatsAttributes: Dictionary[Array] = {
	STRENGTH: {"value": StatsValues[STRENGTH], "proficiency_levels": StatsProficiencies[STRENGTH]},
	DEXTERITY: {"value": StatsValues[DEXTERITY], "proficiency_levels": StatsProficiencies[DEXTERITY]},
	CONSTITUTION: {"value": StatsValues[CONSTITUTION], "proficiency_levels": StatsProficiencies[CONSTITUTION]},
	INTELLIGENCE: {"value": StatsValues[INTELLIGENCE], "proficiency_levels": StatsProficiencies[INTELLIGENCE]},
	WISDOM: {"value": StatsValues[WISDOM], "proficiency_levels": StatsProficiencies[WISDOM]},
	CHARISMA: {"value": StatsValues[CHARISMA], "proficiency_levels": StatsProficiencies[CHARISMA]}
}

@export var StatsSkills: Dictionary = {
	ACROBATICS: {"value": StatsValues[ACROBATICS], "proficiency_levels": StatsProficiencies[ACROBATICS]},
	ARCANA: {"value": StatsValues[ARCANA], "proficiency_levels": StatsProficiencies[ARCANA]},
	ATHLETICS: {"value": StatsValues[ATHLETICS], "proficiency_levels": StatsProficiencies[ATHLETICS]},
	CRAFTING: {"value": StatsValues[CRAFTING], "proficiency_levels": StatsProficiencies[CRAFTING]},
	DECEPTION: {"value": StatsValues[DECEPTION], "proficiency_levels": StatsProficiencies[DECEPTION]},
	DIPLOMACY: {"value": StatsValues[DIPLOMACY], "proficiency_levels": StatsProficiencies[DIPLOMACY]},
	INTIMIDATION: {"value": StatsValues[INTIMIDATION], "proficiency_levels": StatsProficiencies[INTIMIDATION]},
	LORE_CRYPTOGRAPHY: {"value": StatsValues[LORE_CRYPTOGRAPHY], "proficiency_levels": StatsProficiencies[LORE_CRYPTOGRAPHY]},
	MEDICINE: {"value": StatsValues[MEDICINE], "proficiency_levels": StatsProficiencies[MEDICINE]},
	NATURE: {"value": StatsValues[NATURE], "proficiency_levels": StatsProficiencies[NATURE]},
	OCCULTISM: {"value": StatsValues[OCCULTISM], "proficiency_levels": StatsProficiencies[OCCULTISM]},
	PERFORMANCE: {"value": StatsValues[PERFORMANCE], "proficiency_levels": StatsProficiencies[PERFORMANCE]},
	RELIGION: {"value": StatsValues[RELIGION], "proficiency_levels": StatsProficiencies[RELIGION]},
	SOCIETY: {"value": StatsValues[SOCIETY], "proficiency_levels": StatsProficiencies[SOCIETY]},
	STEALTH: {"value": StatsValues[STEALTH], "proficiency_levels": StatsProficiencies[STEALTH]},
	SURVIVAL: {"value": StatsValues[SURVIVAL], "proficiency_levels": StatsProficiencies[SURVIVAL]},
	THIEVERY: {"value": StatsValues[THIEVERY], "proficiency_levels": StatsProficiencies[THIEVERY]}
}
