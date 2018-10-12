extends Node

var bg_color = Color("f0f0f0")

func _ready():
	randomize()
	bg_color = Color(randf(), randf(), randf())
