extends Node2D

var count = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$"TextureRect/NameBox/Speaker's Name".text = 'Frostee:'
	$TextureRect/TextBox/Dialogue.text = 'Hi there! I\'m Frostee. I am trying to find a date for the final day of winter, would you be willing to describe your perfect winter day to me?'

func _on_click_screen_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			count += 1
	if count == 1:
		$"TextureRect/NameBox/Speaker's Name".text = 'Percy:'
		$TextureRect/TextBox/Dialogue.text = 'Well, hello. I\'m Percy. What would I want to do for a great winter day?'
	if count == 2:
		$TextureRect/TextBox/Dialogue.text = 'Mmm...'
	if count == 3:
		$TextureRect/TextBox/Dialogue.text = 'It just doesn\'nt feel like winter if it is not snowing, so I would say snow must be falling for it to be a good time.'
	if count == 4:
		$TextureRect/TextBox/Dialogue.text = 'A nice baked good like a cobbler or a pie would be a wonderful treat to have.'
	if count == 5:
		$TextureRect/TextBox/Dialogue.text = 'It would be so relaxing to read indoors. I can imagine it perfectly; Snowing outside, taking a bite of pie between reading the pages of a good book..'
	if count == 6:
		$TextureRect/TextBox/Dialogue.text = 'Maybe I would also put on some background music if I felt like it.'
	if count == 7:
		$TextureRect/TextBox/Dialogue.text = 'All of this daydreaming was nice, but I gotta go finish my errands. It was nice meeting you!'
	if count == 8:
		$"TextureRect/NameBox/Speaker's Name".text = 'Frostee:'
		$TextureRect/TextBox/Dialogue.text = 'Thank\'s for answering my question. Laters!'
	if count == 9:
		get_tree().change_scene_to_file('res://ask_who.tscn')
