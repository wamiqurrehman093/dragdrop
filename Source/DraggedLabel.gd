extends Label

func _input(event):
	if event is InputEventMouseMotion:
		rect_position = event.position - (rect_size / 2)
	if event is InputEventMouseButton:
		if not event.pressed:
			queue_free()
