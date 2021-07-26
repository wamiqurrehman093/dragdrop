extends ColorRect

onready var label = $ColorRect/Label
var dragged_label_scene = preload("res://Source/DraggedLabel.tscn")

func _on_Label_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			get_owner().dragging_label = dragged_label_scene.instance()
			get_owner().add_child(get_owner().dragging_label)
			get_owner().dragging_label.text = label.text
			get_owner().text = label.text
