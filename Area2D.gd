extends Area2D






func _on_Area2D_body_shape_entered(body):
	if body.name == "ship":
		get_tree().reload_current_scene()
	if body.name == "shot":
	   queue_free() 
