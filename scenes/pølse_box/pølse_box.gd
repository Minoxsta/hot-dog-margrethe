extends Node2D

@export var pølse_scene : PackedScene = load("res://scenes/pølse/pølse.tscn")

signal pols_created(pols)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_texture_button_down() -> void:
	var pols = pølse_scene.instantiate()
	emit_signal("pols_created", pols)
	
