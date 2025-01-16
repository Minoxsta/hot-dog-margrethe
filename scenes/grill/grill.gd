extends Node2D


var mouse_hover = false
var pols_slots = [null,null,null]
var pols_offsets = [Vector2(0,0), Vector2(300,0), Vector2(600,0)]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass


func _on_grill_texture_rect_mouse_entered() -> void:
	mouse_hover = true


func _on_grill_texture_rect_mouse_exited() -> void:
	mouse_hover = false


func add_pols(pols) -> void:
	add_child(pols)
	for i in pols_slots.size():
		if pols_slots[i] == null:
			pols_slots[i] = pols
			break
	align_polses()


func align_polses():
	for i in pols_slots.size():
		if pols_slots[i] != null:
			pols_slots[i].position = position + pols_offsets[i]
		
