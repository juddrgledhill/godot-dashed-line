extends Node2D

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	update()

func _draw():
	draw_set_transform_matrix(transform.inverse())
	draw_dashed_line(Vector2(300, 500), Vector2(519, 500), Color(1, 1, 1, 1), 5, 10, false)


func draw_dashed_line(from, to, color, width, dash_length = 5, cap_end = false, antialiased = false):
	var length = (to - from).length()
	var normal = (to - from).normalized()
	var dash_step = normal * dash_length
	
	if length < dash_length: #not long enough to dash
		draw_line(from, to, color, width, antialiased)
		return

	else:
		var draw_flag = true
		var segment_start = from
		var steps = length/dash_length
		for start_length in range(0, steps + 1):
			var segment_end = segment_start + dash_step
			if draw_flag:
				draw_line(segment_start, segment_end, color, width, antialiased)

			segment_start = segment_end
			draw_flag = !draw_flag
		
		if cap_end:
			draw_line(segment_start, to, color, width, antialiased)