extends Area2D
class_name Melee_Attack

@export var stats : Stats
@export var damagetype : DamageType

enum STATES {READY, ATTACK, WAIT}
@onready var wait_timer = $WaitTimer

var state: STATES = STATES.READY

func _init() -> void:
	pass

func change_state(new_state: STATES):
	state = new_state
	
func fire():
	if state == STATES.ATTACK || state == STATES.WAIT:
		#DoAttackHere
		return
	change_state(STATES.ATTACK)
	
	change_state(STATES.WAIT)
	wait_timer.start()


func _on_wait_timer_timeout() -> void:
	change_state(STATES.READY)
	pass # Replace with function body.
