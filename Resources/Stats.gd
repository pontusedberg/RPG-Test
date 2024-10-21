extends Resource
class_name Stats
func _ready() -> void:
	GlobalScript.number

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
var Trainedstats: Array = [Untrained, Trained, Expert, Master, Legendary]

# Proficiency based on current level and training
#Proficiency: int = Level + Trainedstats[0]  # Set to Untrained by default

func CalcProficiency() -> int:
	return Level + Trainedstats[0] 
var Proficiency: int = CalcProficiency()
# Ability scores
@export var Strength: int = 0
@export var Dexterity: int = 0
@export var Constitution: int = 0
@export var Intelligence: int = 0
@export var Wisdom: int = 0
@export var Charisma: int = 0
var AbilityScores = [Strength,Dexterity,Constitution,Intelligence,Wisdom,Charisma]

#////////////////////////////////////////////////
#Defenses

#AC: int = 10 + Proficiency + Dexterity
func CalcAC(Proficiency)-> int:	
	return 10 + Proficiency + Dexterity
var AC:int = CalcAC(Proficiency)

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
