extends Node

func _ready():
	$ColorRect.set_frame_color(environment.bg_color)

func switch_scene():
	environment.bg_color = Color(randf(), randf(), randf())
	$ColorRect.set_frame_color(environment.bg_color)