extends Resource
class_name CONSTANTS

const NAME: String = "Name"
const DESCRIPTION: String = "Description"
#const TEXTURE: Texture2D 
const RARITY: String = ""

const LEVEL: int = 0
const PRICE: int = 0
const BULK: int = 0


@export var Name = NAME
@export_multiline var Description = DESCRIPTION
@export var texture : Texture2D
@export var Rarity = RARITY
@export var Trait = [TRAITS]
@export var Level = LEVEL
@export var Price = PRICE
@export var Bulk = BULK
