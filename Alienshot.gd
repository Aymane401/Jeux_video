extends KinematicBody2D


var Moe_speed = 300

func _physics_process(delta):
	#position.y += 2
	var collision = move_and_collide(Vector2.DOWN *delta * Moe_speed)
	#var collision = move_and_collide(Vector2.UP *delta * Moe_speed)
	if collision and collision.collider.has_method("dead"):
		collision.collider.dead()
	
