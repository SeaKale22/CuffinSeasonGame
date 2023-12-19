extends Node2D

func _on_answer_yes_pressed():
	PlayerAttributes.set_music('Yes')
	get_tree().change_scene_to_file("res://quiz_answers.tscn")

func _on_answer_no_pressed():
	PlayerAttributes.set_music('No')
	get_tree().change_scene_to_file("res://quiz_answers.tscn")
