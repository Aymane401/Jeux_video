extends KinematicBody2D



# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var move_speed = 10
var shootingcount = rand_range(5,50)



func _physics_process(delta):
	var collision = move_and_collide(Vector2.DOWN * delta * move_speed)
	shootingcount +=delta
	if shootingcount >=50:
		var bullet = preload("res://AlienBullet.tscn")
		var firedbullet = bullet.instance()
		firedbullet.position = Vector2(position.x,position.y)
		get_parent().call_deferred("add_child", firedbullet)
		
		shootingcount = rand_range(5,50)


	
	
func kill():
	#var score = preload("res://score.gd")
	#score.addscore()
	#get_node("score1").play("addscore")
 
	queue_free()
