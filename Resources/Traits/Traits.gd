extends Resource
class_name TRAITS

const NAME: String = "Name"
const DESCRIPTION: String = "Description"
#const TEXTURE: Texture2D 

@export var Name = NAME
@export_multiline var Description = DESCRIPTION
@export var texture : Texture2D
var dice: Dice
var stats: Stats

@export var state_machine : StateMachine


class Magical:
	func Magical():
		pass

class PERSISTENT:
	func Persistent():
		#DEAL ? OVER TIME X
		pass

class HEALING:
	func Healing(dice,int):
		#Healing potion
		# Restore 3d8+10
		var Healing = dice.roll() + int
		return Healing

class VITALITY:
	#Effects with this trait heal living creatures & deal vitality energy damage to undead, or manipulate vitality energy.
	func Vitality(dice,int):
		if UNDEAD:
			pass

class UNDEAD:
	#When reduced to 0 Hit Points, an undead creature is destroyed
	#Health is stored in Stats
	func Undead(stats):
		if stats.health >= 0:
			var Destroy: int #I will make a destroy function to destroy anything later on
			return Destroy

class HEALTH:
	var Health: int
