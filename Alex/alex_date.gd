extends Node2D

var count = 0
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$"TextureRect/NameBox/Speaker's Name".text = 'Frostee:'
	$TextureRect/TextBox/Dialogue.text = 'Hiya Alex! Remember that perfect winter day you described?'


func _on_click_screen_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			count += 1
	if count == 1:
		$TextureRect/TextBox/Dialogue.text = 'Would you like spend the day doing all of those fun things?'
	if count == 2:
		$"TextureRect/NameBox/Speaker's Name".text = 'Alex:'
		$TextureRect/TextBox/Dialogue.text = 'Like a date? Um....'
	if count == 3:
		$TextureRect/TextBox/Dialogue.text = 'YES?! Come on!'
	if count == 4:
		if PlayerAttributes.get_weather() == AlexAttributes.get_weather():
			score = score + 1
		if PlayerAttributes.get_apperal() == AlexAttributes.get_apperal():
			score = score + 1
		if PlayerAttributes.get_snack() == AlexAttributes.get_snack():
			score = score + 1
		if PlayerAttributes.get_activity() == AlexAttributes.get_activity():
			score = score + 1
		if PlayerAttributes.get_music() == AlexAttributes.get_music():
			score = score + 1
		if score >= 3:
			get_tree().change_scene_to_file("res://win.tscn")
		else:
			get_tree().change_scene_to_file("res://lose.tscn")
