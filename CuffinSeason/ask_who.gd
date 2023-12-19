extends Node2D

func _on_click_screen_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			get_tree().change_scene_to_file('res://select_date.tscn')
