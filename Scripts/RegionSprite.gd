extends Sprite2D
class_name RegionSprite


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	region_enabled = true
	region_rect = Rect2(0, 0, 16, 16)

	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
