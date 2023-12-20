extends Node2D




func _on_alex_button_pressed():
	get_tree().change_scene_to_file("res://Alex/alex_date.tscn")


func _on_ash_button_pressed():
	get_tree().change_scene_to_file("res://Ash/ash_date.tscn")


func _on_percy_button_pressed():
	get_tree().change_scene_to_file("res://Percy/percy_date.tscn")
