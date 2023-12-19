extends Node2D

var count = 0
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$"TextureRect/NameBox/Speaker's Name".text = 'Frostee:'
	$TextureRect/TextBox/Dialogue.text = 'Hello Percy! There is something I would like to ask you.'

func _on_click_screen_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			count += 1
	if count == 1:
		$TextureRect/TextBox/Dialogue.text = 'Would you like to go on a date with me?'
	if count == 2:
		$"TextureRect/NameBox/Speaker's Name".text = 'Percy:'
		$TextureRect/TextBox/Dialogue.text = 'You wanna go on a date with me?'
	if count == 3:
		$TextureRect/TextBox/Dialogue.text = 'Sure, why not. Could be fun!'
	if count == 4:
		if PlayerAttributes.get_weather() == PercyAttributes.get_weather():
			score = score + 1
		if PlayerAttributes.get_apperal() == PercyAttributes.get_apperal():
			score = score + 1
		if PlayerAttributes.get_snack() == PercyAttributes.get_snack():
			score = score + 1
		if PlayerAttributes.get_activity() == PercyAttributes.get_activity():
			score = score + 1
		if PlayerAttributes.get_music() == PercyAttributes.get_music():
			score = score + 1
		if score >= 3:
			get_tree().change_scene_to_file("res://win.tscn")
		else:
			get_tree().change_scene_to_file("res://lose.tscn")
