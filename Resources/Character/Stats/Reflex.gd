extends Proficiency
class_name Reflex


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
