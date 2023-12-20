extends Node2D

var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$TextureRect2.visible = !$TextureRect2.visible
	$Label.visible = !$Label.visible


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	counter += 1
	
	if counter == 300:
		$TextureRect.visible = !$TextureRect.visible
		$TextureRect2.visible = !$TextureRect2.visible
		
	
	if counter == 400:
		$TextureRect2.visible = !$TextureRect2.visible
	
	if counter == 405:
		$Label.visible = !$Label.visible
