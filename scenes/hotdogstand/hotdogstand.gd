extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pølse_pols_dropped(pols) -> void:
	print("Pols dropped caught in hotdogstand")
	print(pols.position)
	if $Grill.mouse_hover:
		remove_child(pols)
		$Grill.add_pols(pols)
	else:
		pols.fall()


func _on_pølse_box_pols_created(pols: Variant) -> void:
	add_child(pols)
	pols.connect("pols_dropped", _on_pølse_pols_dropped)
