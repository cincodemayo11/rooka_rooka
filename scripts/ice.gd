extends Area2D

func _on_body_entered(body):
	if body == %player:
		body.set_ice(0.5, 140)
		body.play_anim("ice")

func _on_body_exited(body):
	if body == %player:
		body.play_anim("rev_ice")
		body.set_ice(50, 70)
		$Timer.start()
		#body.play_anim("walk")
		


func _on_timer_timeout():
	%player.play_anim("walk")
