extends Node2D

const SIDE_LEN_PX = 2

export var radius = 150
export var color = Color(1, 1, 1)
var vertices = PoolVector2Array()
var empty = PoolVector2Array()

func _ready():
	var dy = SIDE_LEN_PX / 2
	var dx = sqrt(radius * radius - dy * dy)
	var angle_delta = atan2(dx, dy)
	var angle = 0
	angle_delta = 2 * PI / (3 * 360)
	
	while angle < 2 * PI:
		var x = cos(angle) * radius
		var y = sin(angle) * radius
		vertices.append(Vector2(x, y))
		angle += angle_delta
	
func _draw():
	draw_colored_polygon(vertices, color, empty, null, null, true)