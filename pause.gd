extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

			
#	pass


func _input(event):
	if Input.is_action_pressed ("ui_pause"):
		get_tree().paused = not get_tree().paused
		if ($Label.text == str("Pause")):
			$Label.text = str("")
		else:
			$Label.text = str("Pause")
