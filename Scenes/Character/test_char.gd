extends CharacterBody2D
class_name TestChar
@export var stats: Stats

@export var current_weapon: Weapons:
	set(value):
		current_weapon = value

# Function to get weapon damage info
func get_weapon_damage_info() -> String:
	if current_weapon == null:
		return "No weapon equipped"
	var damage_info = ""
	for damage_type in current_weapon.damage_type.damage_types.keys():
		var damage_amount = current_weapon.damage_type.damage_types[damage_type]
		if damage_amount > 0:
			damage_info += damage_type + ": " + str(damage_amount) + "\n"
	
	return damage_info.strip_edges()

# Function to list weapons the character has
func list_weapons() -> String:
	if current_weapon == null:
		return "No weapons equipped"
	
	return "Current weapon: " + str(current_weapon)
