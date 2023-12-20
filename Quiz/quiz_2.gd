extends Node2D

func _on_answer_beanie_pressed():
	PlayerAttributes.set_apparel('Beanie')
	get_tree().change_scene_to_file("res://Quiz/quiz_3.tscn")

func _on_answer_mittens_pressed():
	PlayerAttributes.set_apparel('Mittens')
	get_tree().change_scene_to_file("res://Quiz/quiz_3.tscn")

func _on_answer_scarf_pressed():
	PlayerAttributes.set_apparel('Scarf')
	get_tree().change_scene_to_file("res://Quiz/quiz_3.tscn")

func _on_answer_puffy_jacket_pressed():
	PlayerAttributes.set_apparel('Puffy Jacket')
	get_tree().change_scene_to_file("res://Quiz/quiz_3.tscn")

func _on_answer_ear_muffs_pressed():
	PlayerAttributes.set_apparel('Ear Muffs')
	get_tree().change_scene_to_file("res://Quiz/quiz_3.tscn")
