extends StaticBody2D


var Velocity = Vector2()
var speed = 250

func _physics_process(delta):
	if Input.is_action_just_pressed ("ui_left"):
		Velocity.x = - speed
		
	if Input.is_action_just_pressed ("ui_right"):
		Velocity.x =  speed
	
	#Velocity = move_and_slide(Velocity)
	
	if Input.is_action_just_pressed ("ui_accept"):
		fire()


func fire():
	var bullet = preload("res://Bullet.tscn")
	var fired_bullet = bullet.instance()
	fired_bullet.position = Vector2(position.x,80)
	get_parent().call_deferred("add_child", fired_bullet)


func dead():
	return 0
#	queue_free()
#	get_tree().paused = true
