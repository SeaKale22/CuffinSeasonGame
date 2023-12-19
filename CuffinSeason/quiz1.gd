extends Node2D

func _on_answer_sunny_pressed():
	PlayerAttributes.set_weather('Sunny')
	get_tree().change_scene_to_file("res://quiz_2.tscn")
func _on_answer_snowy_pressed():
	PlayerAttributes.set_weather('Snowy')
	get_tree().change_scene_to_file("res://quiz_2.tscn")

func _on_answer_stormy_pressed():
	PlayerAttributes.set_weather('Stormy')
	get_tree().change_scene_to_file("res://quiz_2.tscn")
