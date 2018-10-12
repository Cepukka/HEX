extends Node2D

const SIDE_LEN_PX = 2

var radius = 10
var current_scale = Vector2()
export var scale_multiplier = Vector2(1,1) setget multiscale
export var color = Color(1, 1, 1) setget color_change
var vertices = PoolVector2Array()
var empty = PoolVector2Array()

func _ready():
	$Animation.play("idle")
	circle_radius()
	current_scale = scale

func circle_radius():
	var dy = SIDE_LEN_PX / 2
	var dx = sqrt(1 * 1 - dy * dy)
	var angle_delta = atan2(dx, dy)
	var angle = 0
	angle_delta = 2 * PI / (3 * 360)
	
	while angle < 2 * PI:
		var x = cos(angle)
		var y = sin(angle)
		vertices.append(Vector2(x, y))
		angle += angle_delta

func _draw():
	draw_colored_polygon(vertices, color, empty, null, null, true)

func color_change(value):
	color = value
	update()

func multiscale(value):
	scale_multiplier = value
	scale = current_scale*scale_multiplier


func _on_Button_pressed():
	$Animation.play("pressed")
