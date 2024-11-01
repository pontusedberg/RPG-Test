extends Proficiency
class_name Chararcterstats

const ACROBATICS = {"Value":0,}
const ARCANE = {"Value":0,}
const ATHLETICS = {"Value":0,}
const CRAFTING = {"Value":0,}
const DECEPTION = {"Value":0,}
const DIPLIMACY = {"Value":0,}
const INTIMIDATION = {"Value":0,}
const LORE ={"Lore":[],}
const MEDICINE = {"Medicine":0,}
const NATURE = {"Nature":0,}
const OCCULTISM = {"Occultism":0,}
const PERFORMANCE = {"Performance":0,}
const RELIGION = {"Religion":0,}
const SOCIETY = {"Society": 0,}
const STEALTH = {"Stealth": 0,}
const SURVIVAL = {"Survival":0,}
const THIEVERY = {"Thievery":0,}

const CHARSTATSARRAY: Array = [
	ACROBATICS,
	ARCANE,
	ATHLETICS,
	CRAFTING,
	DECEPTION,
	DIPLIMACY,
	INTIMIDATION,
	LORE,
	MEDICINE,
	NATURE,
	OCCULTISM,
	PERFORMANCE,
	RELIGION,
	SOCIETY,
	STEALTH,
	SURVIVAL,
	THIEVERY
	]
const CHARSTATSDICT: Dictionary = {
	"Acrobatics":CHARSTATSARRAY[0],
	"Arcane":CHARSTATSARRAY[1],
	"Athletics":CHARSTATSARRAY[2],
	"Crafting":CHARSTATSARRAY[3],
	"Deception":CHARSTATSARRAY[4],
	"Diplomacy":CHARSTATSARRAY[5],
	"Intimidation":CHARSTATSARRAY[6],
	"Lore":CHARSTATSARRAY[7],
	"Medicine":CHARSTATSARRAY[8],
	"Nature":CHARSTATSARRAY[9],
	"Occultism":CHARSTATSARRAY[10],
	"Performance":CHARSTATSARRAY[11],
	"Religion":CHARSTATSARRAY[12],
	"Society":CHARSTATSARRAY[13],
	"Stealth":CHARSTATSARRAY[14],
	"Survival":CHARSTATSARRAY[15],
	"THIEVERY":CHARSTATSARRAY[16]
}

@export var CharStats_Dict = CHARSTATSDICT
