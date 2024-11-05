extends CharacterBody2D
class_name TestChar
@export var stats:  Stats

@export var current_weapon: Weapons:
	set(value):
		current_weapon = value

var damage_type = current_weapon.damage_type

func get_weapon_damage_info() -> String:
	if current_weapon == null:
		return "No weapon equipped"
	
	var damage_info = ""
	for damage_type in current_weapon.damage_type:
		var damage_amount = current_weapon.damage_type[damage_type]
		damage_info += damage_type + ": " + str(damage_amount) + "\n"
	
	return damage_info.strip_edges()
