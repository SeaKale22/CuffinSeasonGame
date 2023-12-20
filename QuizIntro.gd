extends Node2D

var count = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$"ColorRect2/Speaker".text = 'Frostee:'
	$"ColorRect2/Dialogue".text = 'A HEAT WAVE?!?!'

func _on_control_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			count += 1
	if count == 1:
		$ColorRect2/Dialogue.text = 'But I literally JUST got here.'
	if count == 2:
		$ColorRect2/Dialogue.text = '... ... ...'
	if count == 3:
		$ColorRect2/Dialogue.text = 'ok. ok ok. I gotta have the best winter day before I go....'
	if count == 4:
		$ColorRect2/Dialogue.text = '...and maybe someone to share it with?'
	if count == 5:
		$ColorRect2/Dialogue.text = '...What IS the perfect winter day.....hm....'
	if count == 6:
		get_tree().change_scene_to_file('res://Quiz/quiz1.tscn')

