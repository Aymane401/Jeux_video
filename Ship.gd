extends KinematicBody2D




var temp = false
var Velocity = Vector2()
var speed = 250

func _physics_process(delta):
	if Input.is_action_just_pressed ("ui_left"):
		Velocity.x = - speed
		
	if Input.is_action_just_pressed ("ui_right"):
		Velocity.x =  speed
	
	Velocity = move_and_slide(Velocity)
	
	if Input.is_action_just_pressed ("ui_accept"):
		fire()
	if Input.is_action_just_pressed ("debug"):
		if (temp == false):
			temp = true
		
	if (temp==true):
		$debug.text = str("Vessel (x,y)")
		$debugValue.text = str("x:"+ str(position.x) +", y: "+ str(position.y))



func fire():
	var bullet = preload("res://Bullet.tscn")
	var fired_bullet = bullet.instance()
	fired_bullet.position = Vector2(position.x,80)
	get_parent().call_deferred("add_child", fired_bullet)


func dead():
	get_parent()._emit()
	emit_signal("my_signal2")
	queue_free()
	
	get_tree().paused = true
