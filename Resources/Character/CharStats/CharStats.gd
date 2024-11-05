extends Resource
class_name CharStats

var ancestry : Ancestry 
	#An ancestry provides attribute boosts 
	#(and perhaps attribute flaws), Hit Points, ancestry feats, 
	#and sometimes additional abilities.
var background : Background
	#Background gives you two boosts to your attributes, training in a skill 
	#as well as a Lore subskill, and a skill feat related to your trained skill.
var charClass : CharClass 
	#Key Attribute.
	#Hit Points: 8 plus your Constitution modifier 

@export var Speed = 30
@export var Health = 100
@export var Max_health = 100
@export var CircumstanceBonusArray: Array = []
@export var ItemBonusArray: Array = []
@export var StatusBonusArray: Array = []
