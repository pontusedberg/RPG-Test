Stats:
	"Acrobatics": 0
	"Arcane": 0
	"Athletics": 0
	"Crafting": 0
	"Deception": 0
	"Diplomacy": 0
	"Intimidation": 0
	"Lore": []
	"Medicine": 0
	"Nature": 0
	"Occultism": 0
	"Performance": 0
	"Perception": 0
	"Religion": 0
	"Society": 0
	"Stealth": 0
	"Survival": 0
	"Thievery": 0
AbilityScores:
	"Strength":0 
	"Dexterity"
	"Constitution"
	"Intelligence"
	"Wisdom"
	"Charisma"


ProficiencyRank:
	"Untrained" = 0
	"Trained" = 2
	"Expert" = 4
	"Master" = 6
	"Legendary" = 8

Charlevel = 0

ProficiencyBonus
CharLevel + ProficiencyRank

class ancestry:
	DESCRIPTION: string = ""
	HITPOINTS: int = 0
	SIZE: string = ""
	ABILITYBOOSTSANDFLAWS: Dictionary = {}
	LANGUAGES: = []
	SPECIAL: = []

Ancestry human:
	DESCRIPTION: "Humans are a diverse people known for their adaptability."
	HITPOINTS: 8
	SIZE: Medium
	ABILITYBOOSTSANDFLAWS: {"Free": 2}
	LANGUAGES: ["Common", "Additional language"]
	SPECIAL: ["Heritage", "Ancestry Feat"]

class background:
	DESCRIPTION: string = ""
	ABILITYBOOST: Dictionary = {}
	SKILLFEAT: string = {}

class Charclasses:
	DESCRIPTION: string = ""
	KEYABILITY: string = ""
	HITPOINTS: int = 0
	PERCEPTION: string = ""
	SAVINGTHROWS: Dictionary = {}
	SKILLS: [] = []
	ATTACKS: Dictionary = {}
	DEFENSES: Dictionary = {}		
Charclasses fighter:
	DESCRIPTION: "A master of martial combat, skilled with a variety of weapons and armor."
	KEYABILITY: "Strength"  or "Dexterity"
	HITPOINTS: 10
	PERCEPTION = Expert
	SAVINGTHROWS: Expert [Fortitude,Reflex] Trained [ Will]
	SKILLS: ["Acrobatics", "Athletics",] <- choose one from the list + 3 more from Intelligence modifier
	ATTACKS: Expert [simple weapons,  martial weapons, unarmed attacks] Trained [ advanced weapons]
	DEFENSES: Expert [all armor, shields] Trained [unarmored defense]

CharClasses wizard:
	DESCRIPTION: "A scholarly magic-user capable of manipulating the structures of reality."
	KEYABILITY: "Intelligence"
	HITPOINTS: 6 + Constitution modifier
	PERCEPTION = Trained
	SAVINGTHROWS: Expert [Will] Trained [Fortitude, Reflex]
	SKILLS: ["Arcana", "Nature",] <- choose one from the list + 3 more from Intelligence modifier
	ATTACKS: Expert [simple weapons,  unarmed attacks] Trained [staff]
	DEFENSES: Expert [unarmored defense] Trained [all armor, shields]