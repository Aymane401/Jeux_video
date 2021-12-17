extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var Moe_speed = 300
var life_time = 2
var life_spawn = 0 

func _physics_process(delta):
	
	var collision = move_and_collide(Vector2.UP *delta * Moe_speed)
	#print('im here2')
	if collision and collision.collider.has_method("kill"):
		collision.collider.kill()
		queue_free()
	
	life_spawn += delta
	if life_spawn > life_time:
		queue_free()



	
