extends Resource
class_name Stats

func _ready() -> void:
	GlobalScript.number

var dice : Dice

@export var Name: String
@export var CharStats: Dictionary ={
	
	"Acrobatics": 0,
	"Arcane": 0,
	"Athletics": 0,
	"Crafting": 0,
	"Deception": 0,
	"Diplomacy": 0,
	"Intimidation": 0,
	"Lore": [],
	"Medicine": 0,
	"Nature": 0,
	"Occultism": 0,
	"Performance": 0,
	"Religion": 0,
	"Society": 0,
	"Stealth": 0,
	"Survival": 0,
	"Thievery": 0
}
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
@export var TrainedProficiency: Dictionary = {
	"Untrained": true,
	"Trained": false,
	"Expert": false,
	"Master": false,
	"Legendary": false,
}
@export var Level: int
var Untrained: int = 0
var Trained: int = 2
var Expert: int = 4
var Master: int = 6
var Legendary: int = 8
var Trainedstats: Array = [Untrained, Trained, Expert, Master, Legendary]

# Proficiency based on current level and training
#Proficiency: int = Level + Trainedstats[0]  # Set to Untrained by default

func get_proficiency() -> int:
	for i in range(Trainedstats.size()):
		var level_name = Trainedstats[i]
		if TrainedProficiency.get(level_name, false):
			return Level + Trainedstats[i]
	return Level + Trainedstats[0]  # Default to Untrained if none are active

func CalcProficiency() -> int:
	return Level + Trainedstats[0] 
@export var Proficiency: int = get_proficiency()
# Ability scores
@export var Strength: int
@export var Dexterity: int
@export var Constitution: int
@export var Intelligence: int
@export var Wisdom: int
@export var Charisma: int
var AbilityScores = [Strength,Dexterity,Constitution,Intelligence,Wisdom,Charisma]

#////////////////////////////////////////////////
#Defenses

#AC: int = 10 + Proficiency + Dexterity
func CalcAC(Proficiency)-> int:	
	return 10 + Proficiency + Dexterity
@export var AC:int = CalcAC(Proficiency)

#FortitudeDC: int = 10 + Proficiency+ Constitution
func CalcFortitudeDC(Proficiency)-> int:
	return 10 + Proficiency + Constitution
@export var FortitudeDC: int = CalcFortitudeDC(Proficiency)

#ReflexDC: int = 10 + Proficiency+ Dexterity
func CalcReflexDC(Proficiency)-> int:
	return 10 + Proficiency+ Dexterity
@export var ReflexDC: int = CalcReflexDC(Proficiency)

#WillDC: int = 10 + Wisdom + Proficiency
func CalcWillDC(Proficiency)->int:
	return 10 + Proficiency + Wisdom
@export var WillDC: int = CalcWillDC(Proficiency)
#///////////////////////////////////////////
#Savingthrow
#FortitudeSave: int =  Constitution + Proficiency
func FortitudeSave(Proficiency) -> int:
	return Proficiency + Constitution 
#ReflexSave: int = Dexterity + Proficiency
func ReflexSave(Proficiency) -> int:
	return Proficiency+Dexterity
#WillSave: int  =  Wisdom + Proficiency
func WillSave(Proficiency) -> int:
	return Proficiency + Wisdom
