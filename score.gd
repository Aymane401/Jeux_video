extends Label
signal died







# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var score=0 

func _process(delta):
	text = str(score)
	



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	#$Timer.connect("died", self, "addscore")
	text = str(score)

#static func setscore():


	


func addscore():
	score+=100

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
