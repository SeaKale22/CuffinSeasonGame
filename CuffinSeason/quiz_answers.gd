extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$TextureRect/PlayerAnswers.text = 'Weather: ' + PlayerAttributes.get_weather() + char(10) + 'Apperal: ' + PlayerAttributes.get_apperal() + char(10) + 'Snack: ' + PlayerAttributes.get_snack() + char(10) + 'Activity: ' + PlayerAttributes.get_activity() + char(10) + 'Music: ' + PlayerAttributes.get_music()
