extends Control
@export var my_label : Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	my_label.text = "Set text from code"



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
