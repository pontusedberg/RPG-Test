extends Resource
class_name DamageType

@export var damage_types: Dictionary = {
	"Bludgeoning": 0,
	"Slashing": 0,
	"Piercing": 0,
	"Acid": 0,
	"Cold": 0,
	"Electricity": 0,
	"Fire": 0,
	"Sonic": 0
}

@export var PhysicalDamage : Array
@export var EnergyDamage : Array
@export var SpiritDamage : bool
@export var MentalDamage : bool
@export var PoisonDamage : bool
@export var BleedDamage : int
@export var PrecisionDamage : int
@export var PreciousMaterials: Dictionary = {
	"Silver": 0,
	
}


#PreciousMaterials
