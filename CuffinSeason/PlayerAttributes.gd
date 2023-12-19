extends Node

var weather = ''
var apparel = ''
var snack = ''
var activity = ''
var music = ''

func set_weather(new_weather):
	weather = new_weather
func set_apparel(new_apparel):
	apparel = new_apparel
func set_snack(new_snack):
	snack = new_snack
func set_activity(new_activity):
	activity = new_activity
func set_music(new_music):
	music = new_music

func get_weather():
	return weather
func get_apperal():
	return apparel
func get_snack():
	return snack
func get_activity():
	return activity
func get_music():
	return music
