extends Node2D

var count = 0
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$"TextureRect/NameBox/Speaker's Name".text = 'Frostee:'
	$TextureRect/TextBox/Dialogue.text = 'Hiya Ash! There is something I would like to ask you.'

func _on_click_screen_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			count += 1
	if count == 1:
		$TextureRect/TextBox/Dialogue.text = 'Would you like to go on a date with me? We can do all the things you talked about!'
	if count == 2:
		$"TextureRect/NameBox/Speaker's Name".text = 'Ash:'
		$TextureRect/TextBox/Dialogue.text = 'A date?!'
	if count == 3:
		$TextureRect/TextBox/Dialogue.text = 'Yeah! This is gonna be awesome!'
	if count == 4:
		if PlayerAttributes.get_weather() == AshAttributes.get_weather():
			score = score + 1
		if PlayerAttributes.get_apperal() == AshAttributes.get_apperal():
			score = score + 1
		if PlayerAttributes.get_snack() == AshAttributes.get_snack():
			score = score + 1
		if PlayerAttributes.get_activity() == AshAttributes.get_activity():
			score = score + 1
		if PlayerAttributes.get_music() == AshAttributes.get_music():
			score = score + 1
		if score >= 3:
			get_tree().change_scene_to_file("res://win.tscn")
		else:
			get_tree().change_scene_to_file("res://lose.tscn")
