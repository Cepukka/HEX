extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	VisualServer.set_default_clear_color(Color(0, 0, 0))

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Button_pressed():
	SceneSwitcher.goto_scene("res://Scene/GUI/gui-scene2.tscn")
