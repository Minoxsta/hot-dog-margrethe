extends Node2D

var was_released = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_mouse_button_pressed(1) && not was_released:
		$Sprite2D.position = get_viewport().get_mouse_position()
	else:
		was_released = true
