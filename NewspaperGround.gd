extends Area2D
signal paper


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_touch_paper_body_entered(body):
	if body.name == "MCPlayer":
		print("no touchy!")
		get_tree().change_scene_to_file("res://Alex/alex_interview.tscn")
