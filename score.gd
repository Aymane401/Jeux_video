extends CanvasLayer







# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var score=0 

func _process(delta):
	$score.text = str(score)
	



# Called when the node enters the scene tree for the first time.
func _ready():
	$score.text = str(score)
	$score.connect("my_signal", self, "addscore")

#static func setscore():

func _on_Alien_my_signal():
	addscore()
	$Adie.play()

func addscore():
	score+=100

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_ship_my_signal2():
	$gameover.text = str("Game Over")
