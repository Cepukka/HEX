extends Node2D

export var color = Color(1, 0, 0) setget color_change
var empty = PoolVector2Array()
var vertices

func _ready():
	update_vertices()
	
func update_vertices():
	vertices = PoolVector2Array()
	vertices.append(Vector2(0.5, -0.866025))
	vertices.append(Vector2(1, 0))
	vertices.append(Vector2(0.5, 0.866025))
	vertices.append(Vector2(-0.5, 0.866025))
	vertices.append(Vector2(-1, 0))
	vertices.append(Vector2(-0.5, -0.866025))
	

func _draw():
	draw_colored_polygon(vertices, color, empty, null, null, true)

func color_change(value):
	color = value
	update()

func _on_Button_mouse_entered():
	$Tween.interpolate_property(self, "transform/scale", Vector2(1, 1), Vector2(1.2, 1.2), 0.1, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()
