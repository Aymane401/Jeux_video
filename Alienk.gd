extends KinematicBody2D
var volume_db = 10
var pitch_scale = 3



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


	
	

func playmusic():
	#$AlienDieSound.play()
	print("music played" )





func kill():
	playmusic()
	get_parent()._emit()
	emit_signal("my_signal")
	
	queue_free()
