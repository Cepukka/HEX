extends Node2D

var color = Color(1,1,1)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _draw():
	draw_circle(Vector2(0,0),10000, color)
