extends Resource
class_name Stats
var dice : Dice

@export var Name: String

# Bonuses stored as arrays to allow for multiple bonuses
@export var CircumstanceBonus: int  = get_highest_bonus(CircumstanceBonusArray)
@export var ItemBonus: int = get_highest_bonus(ItemBonusArray)
@export var StatusBonus: int = get_highest_bonus(StatusBonusArray)
var CircumstanceBonusArray: Array = []
var ItemBonusArray: Array = []
var StatusBonusArray: Array= []
func get_highest_bonus(bonuses: Array) -> int:
	if bonuses.size() > 0:
		return max(bonuses)
	return 0

func get_total_bonus() -> int:
	var total_bonus = 0
	# Get highest bonus from each category
	var highest_circumstance = get_highest_bonus(CircumstanceBonusArray)
	var highest_item = get_highest_bonus(ItemBonusArray)
	var highest_status = get_highest_bonus(StatusBonusArray)
	# Add the highest bonuses from each category
	total_bonus += highest_circumstance
	total_bonus += highest_item
	total_bonus += highest_status
	return total_bonus


#Penalties
@export var penalties: int

# Health and basic stats
@export var Max_health: int = 1
@export var Health: int = 1
@export var Speed: int = 0

# Proficiency levels
@export var Level: int
var Untrained: int = 0
var Trained: int = 2
var Expert: int = 4
var Master: int = 6
var Legendary: int = 8
var Trainedstats = [Untrained, Trained, Expert, Master, Legendary]

# Proficiency based on current level and training
@export var Proficiency: int = Level + Trainedstats[0]  # Set to Untrained by default


# Ability scores
@export var Strength: int = 0
@export var Dexterity: int = 0
@export var Constitution: int = 0
@export var Intelligence: int = 0
@export var Wisdom: int = 0
@export var Charisma: int = 0
var AbilityScores = [Strength,Dexterity,Constitution,Intelligence,Wisdom,Charisma]

#Defenses
@export var AC: int = 10 + Dexterity+ Proficiency
@export var FortitudeDC: int = 10 + Constitution + Proficiency
@export var ReflexDC: int = 10 + Dexterity + Proficiency
@export var WillDC: int = 10 + Wisdom + Proficiency 

#Savingthrow
@export var FortitudeSave: int =  Constitution + Proficiency
@export var ReflexSave: int = Dexterity + Proficiency
@export var WillSave: int  =  Wisdom + Proficiency

@export var test: int
# Function to get the highest of a given set of bonuses


# Function to calculate total bonuses
# Adds the highest Circumstance, Item, and Status bonuses
