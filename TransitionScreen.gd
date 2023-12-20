extends CanvasLayer

signal transitioned
	
func transition():
	$AnimationPlayer.play("fade_to_black")
	print("Fading to black")


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "fade_to_black":
		emit_signal("transitioned")
		print("emitting signal")
		$AnimationPlayer.play("fade_to_normal")
	if anim_name == "fade_to_normal":
			print("finished fading")
