extends Resource
class_name DamageType

@export var PhysicalDamage : Array
@export var EnergyDamage : Array
@export var SpiritDamage : bool
@export var MentalDamage : bool
@export var PoisonDamage : bool
@export var BleedDamage : int
@export var PrecisionDamage : int
@export var PreciousMaterials : Array

#PhysicalDamage
@export var Bludgeoning : int
@export var Slashing : int
@export var Piercing : int

#EnergyDamage
@export var Acid: int
@export var Cold: int
@export var Electricity: int
@export var Fire: int = 0
@export var Sonic: int

#PreciousMaterials
var silver : int
