# StateMachine.gd
extends Resource
class_name StateMachine

# Store the actual value in a backing variable, initializing with an empty string
@export var _current_state_value: String = ""
@export var current_state: String:
	get:
		return _current_state_value
	set(new_value):
		_set_state(new_value)

# Similar setup for previous_state
@export var _previous_state_value: String = ""
@export var previous_state: String:
	get:
		return _previous_state_value
	set(new_value):
		_previous_state_value = new_value

# Only export `states`, as it doesn't need custom getter or setter
@export var states: Dictionary = {}

var delta: float = 0.0

# Main update function for the state machine; call this from any class that uses StateMachine
func _update(delta_time: float) -> void:
	if current_state != "":
		_execute_state_logic(delta_time)
		var transition = _get_transition(delta_time)
		if transition != "":
			current_state = transition  # Triggers the custom setter


func _execute_state_logic(delta_time: float) -> void:
	pass
# Placeholder for custom transition logic; override as needed
func _get_transition(delta_time: float) -> String:
	return ""  # Return empty string instead of null

# Handles entering a new state and exiting the old one
func _enter_state(new_state: String, old_state: String) -> void:
	# Custom logic for entering a new state can go here
	pass
	
func _exit_state(old_state: String, new_state: String) -> void:
	# Custom logic for exiting the old state can go here
	pass

# Safely update the current state, ensuring all transitions happen properly
func _set_state(new_state: String) -> void:
	if new_state == _current_state_value:
		return  # Prevent re-entrance into the same state
	
	_previous_state_value = _current_state_value
	_current_state_value = new_state
	
	if _previous_state_value != "":
		_exit_state(_previous_state_value, new_state)
	if _current_state_value != "":
		_enter_state(_current_state_value, _previous_state_value)
# Add a new state to the dictionary with a placeholder value or logic if needed
func _add_state(state_name: String) -> void:
	if state_name not in states:
		states[state_name] = states.size()
