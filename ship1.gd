extends Node2D

signal my_signal2

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _emit ():
	emit_signal("my_signal2")
	

