extends ColorRect

onready var label = $ColorRect/Label

func _input(event):
	if event is InputEventMouseButton:
		if get_rect().has_point(event.position):
			if not event.pressed:
				if get_owner().text:
					label.text = get_owner().text
					get_owner().text = ""
