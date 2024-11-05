
extends StateMachine #Extends from StateMachine


# SleepingAngels


func _ready():
	# Initialize the states for SleepingAngels
	_add_state("sleep")
	_add_state("chase")
	_add_state("attack")
	_set_state("sleep")  # Start in the "sleep" state

# Define the logic specific to each state
func _state_logic(delta: float) -> void:
	match current_state:
		"sleep":
			# Logic for sleep state
			print("Sleeping...")
		"chase":
			# Logic for chase state
			print("Chasing...")
		"attack":
			# Logic for attack state
			print("Attacking...")

# Define transitions between states
func _get_transition(delta: float) -> String:
	# Logic for transitioning between states
	# Example: If some condition is met, transition to "chase" from "sleep"
	if current_state == "sleep" and some_condition_met():
		return "chase"
	elif current_state == "chase" and another_condition_met():
		return "attack"
	# Return empty if no transition is needed
	return ""

# Handle entering a new state
func _enter_state(new_state: String, old_state: String) -> void:
	print("Entering state: ", new_state)

# Handle exiting an old state
func _exit_state(old_state: String, new_state: String) -> void:
	print("Exiting state: ", old_state)

# Condition example functions
func some_condition_met() -> bool:
	# Replace this with actual condition logic
	return false

func another_condition_met() -> bool:
	# Replace this with actual condition logic
	return false
