extends Node2D

func _on_answer_ice_skating_pressed():
	PlayerAttributes.set_activity('Ice Skating')
	get_tree().change_scene_to_file("res://quiz_5.tscn")

func _on_answer_sledding_pressed():
	PlayerAttributes.set_activity('Sledding')
	get_tree().change_scene_to_file("res://quiz_5.tscn")

func _on_reading_pressed():
	PlayerAttributes.set_activity('Reading')
	get_tree().change_scene_to_file("res://quiz_5.tscn")

func _on_answer_snow_ball_fights_pressed():
	PlayerAttributes.set_activity('Snowball Fights')
	get_tree().change_scene_to_file("res://quiz_5.tscn")
