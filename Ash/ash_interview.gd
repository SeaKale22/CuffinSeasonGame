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
		$"TextureRect/NameBox/Speaker's Name".text = 'Ash:'
		$TextureRect/TextBox/Dialogue.text = 'Hiya, I am Ash! Uh, give some time to gather my thoughts.'
	if count == 2:
		$TextureRect/TextBox/Dialogue.text = '... ... ...'
	if count == 3:
		$TextureRect/TextBox/Dialogue.text = 'It\'s a bit different, but I love a winter storm! The bellowing cold air and the sound of the wind are really exciting!'
	if count == 4:
		$TextureRect/TextBox/Dialogue.text = 'I am a bit of a sugar fiend, so I would want to eat lots of candy!'
	if count == 5:
		$TextureRect/TextBox/Dialogue.text = 'I remember getting into a lot of snowball fights when I was a kiddo. I think it would be so much fun to do again!'
	if count == 6:
		$TextureRect/TextBox/Dialogue.text = 'To be honest, I am not really a fan of holiday music. Working retail will do that to ya.'
	if count == 7:
		$TextureRect/TextBox/Dialogue.text = 'Oh, that\'s all the time I can spare right now. My friend\'s cats got out; I gotta catch \'em all!'
	if count == 8:
		$"TextureRect/NameBox/Speaker's Name".text = 'Frostee:'
		$TextureRect/TextBox/Dialogue.text = 'Be careful! See you soon (maybe).'
	if count == 9:
		get_tree().change_scene_to_file('res://McPercy.tscn')
