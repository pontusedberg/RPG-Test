extends Node2D  # Use whatever base class is needed

# Instance of StateMachine as a component
var state_machine: StateMachine

func _ready():
	# Instantiate StateMachine and initialize states
	state_machine = StateMachine.new()
	state_machine.add_state("sleep")
	state_machine.add_state("chase")
	state_machine.add_state("attack")
	state_machine.current_state = "sleep"  # Start in the "sleep" state

# Update function to process state logic
func _physics_process(delta: float) -> void:
	state_machine.update(delta)  # Run state machine update

	# Use custom logic based on current state
	match state_machine.current_state:
		"sleep":
			print("Sleeping...")
		"chase":
			print("Chasing...")
		"attack":
			print("Attacking...")

# Transition logic can be implemented by extending `StateMachine` methods
func _get_transition(delta: float) -> String:
	if state_machine.current_state == "sleep" and some_condition_met():
		return "chase"
	elif state_machine.current_state == "chase" and another_condition_met():
		return "attack"
	return ""

# Example condition functions
func some_condition_met() -> bool:
	return false

func another_condition_met() -> bool:
	return false
