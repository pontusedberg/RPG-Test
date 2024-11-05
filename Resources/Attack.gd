extends Resource
class_name Attack
var dice : Dice
var character : Character



# Function to get the highest of multiple bonuses (since same type bonuses don't stack)
func get_highest_bonus(bonuses: Array) -> int:
	if bonuses.size() > 0:
		return max(bonuses)
	return 0

# Function to calculate total bonus for a roll (combining Circumstance, Item, and Status bonuses)
func get_total_bonus() -> int:
	var total_bonus = 0
	
	# Get highest bonus from each category
	var highest_circumstance = get_highest_bonus(stats.CircumstanceBonusArray)
	var highest_item = get_highest_bonus(stats.ItemBonusArray)
	var highest_status = get_highest_bonus(stats.StatusBonusArray)
	
	# Add the highest bonuses from each category
	total_bonus += highest_circumstance
	total_bonus += highest_item
	total_bonus += highest_status
	
	return total_bonus

# Function to calculate the attack roll (melee or ranged)
# Function to calculate the attack roll (melee or ranged)
func calculate_attack_roll(is_melee: bool, finesse: bool = false) -> int:
	var attribute_modifier = 0
	# Use Strength for melee, or Dexterity for finesse weapons or ranged attacks
	if is_melee:
		attribute_modifier = (stats.Dexterity)
	else:
		attribute_modifier = stats.Dexterity  # Ranged attacks use Dexterity
	# d20 roll + attribute modifier + proficiency + other bonuses
	var roll = dice.D20 + attribute_modifier + stats.Proficiency + get_total_bonus()	
	# Apply penalties if needed (add logic for penalties here if you have them)
	# For example: roll -= some_penalty_value
	return roll

# Function to calculate melee damage roll
func calculate_melee_damage(weapon_damage_die: int) -> int:
	var damage = weapon_damage_die + stats.Strength + get_total_bonus()	
	# Apply penalties if needed (add logic for penalties here if you have them)
	return damage

# Function to calculate ranged damage roll
# If thrown, apply full Strength modifier; if propulsive, apply half Strength modifier
func calculate_ranged_damage(weapon_damage_die: int, is_thrown: bool = false, is_propulsive: bool = false) -> int:
	var damage = weapon_damage_die
	if is_thrown:
		damage += stats.Strength
	elif is_propulsive:
		damage += stats.Strength / 2

	damage += get_total_bonus()

	# Apply penalties if needed (add logic for penalties here if you have them)
	return damage

# Function to calculate spell attack roll
func calculate_spell_attack_roll(spellcasting_modifier: int) -> int:
	var roll = dice.D20 + spellcasting_modifier + stats.Proficiency + get_total_bonus()
	
	# Apply penalties if needed
	return roll

# Sample usage for melee attack
func make_melee_attack():
	var attack_roll = calculate_attack_roll(true)
	var damage_roll = calculate_melee_damage(dice.D8)  # Assume weapon uses a d8 damage die
	print("Melee Attack Roll: ", attack_roll)
	print("Melee Damage: ", damage_roll)

# Sample usage for ranged attack
func make_ranged_attack():
	var attack_roll = calculate_attack_roll(true)
	var damage_roll = calculate_ranged_damage(dice.D6, true)  # Assume thrown weapon uses a d6 damage die
	print("Ranged Attack Roll: ", attack_roll)
	print("Ranged Damage: ", damage_roll)

# Sample usage for spell attack
func make_spell_attack(spellcasting_modifier):
	var attack_roll = calculate_spell_attack_roll(spellcasting_modifier)
	print("Spell Attack Roll: ", attack_roll)
