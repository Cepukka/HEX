extends Node

func switch_scene():
	environment.bg_color = Color(randf(), randf(), randf())
	sceneSwitcher.goto_scene("res://Scene/Game/scene3.tscn")