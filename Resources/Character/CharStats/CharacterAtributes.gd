extends Proficiency
class_name ChararcterAtributes

@export var acrobatics: SkillResource
@export var arcane: SkillResource
@export var athletics: SkillResource
@export var crafting: SkillResource
@export var deception: SkillResource
@export var diplomacy: SkillResource
@export var intimidation: SkillResource
@export var lore: SkillResource
@export var medicine: SkillResource
@export var occultism: SkillResource
@export var performance: SkillResource
@export var religion: SkillResource
@export var society: SkillResource
@export var thievery: SkillResource


func _init():
	acrobatics = SkillResource.new("acrobatics",0, untrained)
	arcane = SkillResource.new("arcane",0, untrained)
	athletics = SkillResource.new("Athletics",0, untrained)
	crafting = SkillResource.new("Crafting",0, untrained)
	deception = SkillResource.new("Deception",0, untrained)
	diplomacy = SkillResource.new("Diplomacy",0, untrained)
	intimidation = SkillResource.new("Intimidation",0, untrained)
	lore = SkillResource.new("Lore",0, untrained)
	medicine = SkillResource.new("Medicine",0, untrained)
	occultism = SkillResource.new("Occultism",0, untrained)
	performance = SkillResource.new("Performance",0, untrained)
	religion = SkillResource.new("Religion",0, untrained)
	society = SkillResource.new("Society",0, untrained)
	thievery = SkillResource.new("Thievery",0, untrained)
