extends Node

func _ready():
	calc_vertices()

func calc_vertices(vertex_count):
	vertices = PoolVector2Array()
	
	var angle_delta = 2 * PI / vertex_count
	var angle = PI * 3 / 2
	
	if vertex_count % 2 == 0:
		angle += angle_delta / 2
	
	while vertex_count > 0:
		var x = cos(angle)
		var y = sin(angle)
		vertices.append(Vector2(x, y))
		print(str(x) + ", " + str(y))
		angle += angle_delta
		vertex_count -= 1