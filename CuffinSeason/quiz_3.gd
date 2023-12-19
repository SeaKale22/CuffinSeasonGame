extends Node2D

func _on_answer_hot_cocoa_pressed():
	PlayerAttributes.set_snack('Hot Coco')
	get_tree().change_scene_to_file("res://quiz_4.tscn")

func _on_answer_pie_pressed():
	PlayerAttributes.set_snack('Pie')
	get_tree().change_scene_to_file("res://quiz_4.tscn")

func _on_answer_none_pressed():
	PlayerAttributes.set_snack('None')
	get_tree().change_scene_to_file("res://quiz_4.tscn")

func _on_answer_candy_pressed():
	PlayerAttributes.set_snack('Candy')
	get_tree().change_scene_to_file("res://quiz_4.tscn")
