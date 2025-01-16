extends Node2D

signal pols_dropped(pols)

var was_released = false
var pols_dropped_signal_sent = false
var falling = false

@export var fall_speed = 1500
@export var rotate_speed = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotate_speed = randf_range(-20, 20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_mouse_button_pressed(1) && not was_released:
		position = get_viewport().get_mouse_position()
	else:
		was_released = true
		if not pols_dropped_signal_sent:
			pols_dropped_signal_sent = true
			pols_dropped.emit(self)
			print("pols dropped signal sent")
	
	if falling:
		position.y += fall_speed * delta
		rotation += rotate_speed * delta
		

func fall():
	falling = true
