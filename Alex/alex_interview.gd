extends Node2D

var count = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$"TextureRect/NameBox/Speaker's Name".text = 'Frostee:'
	$TextureRect/TextBox/Dialogue.text = 'Hello, My name is Frostee. For absolutely no reason at all, I\'m wondering what your perfect winter day is like.'

func _on_click_screen_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			count += 1
	if count == 1:
		$"TextureRect/NameBox/Speaker's Name".text = 'Alex:'
		$TextureRect/TextBox/Dialogue.text = 'Nice to meet you, I\'m Alex! The perfect winter day, huh? Give me a moment to think.'
	if count == 2:
		$TextureRect/TextBox/Dialogue.text = '... ... ...'
	if count == 3:
		$TextureRect/TextBox/Dialogue.text = 'Let\'s see.. \n I\'m not a huge fan of the cold, so I would like a sunny day!'
	if count == 4:
		$TextureRect/TextBox/Dialogue.text = 'But if it\'s chilly, I wanna drink lots of hot cocoa! The warm chocolate would really soothe my soul!'
	if count == 5:
		$TextureRect/TextBox/Dialogue.text = 'I\'ve always wanted to go ice skating. I would probably fall on my butt though.'
	if count == 6:
		$TextureRect/TextBox/Dialogue.text = 'OOOO and no winter day is complete without listening to some classic holiday music!'
	if count == 7:
		$TextureRect/TextBox/Dialogue.text = 'I think that\'s about it! Thanks for asking, magically animated snow-person!'
	if count == 8:
		$"TextureRect/NameBox/Speaker's Name".text = 'Frostee:'
		$TextureRect/TextBox/Dialogue.text = 'It was nice chatting, see ya!'
	if count == 9:
		get_tree().change_scene_to_file('res://McAsh.tscn')
