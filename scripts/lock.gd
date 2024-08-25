extends Area2D


func _on_body_entered(body):
	if body == %player:
		print("based")
		$keytimer.start()
		$leveltimer.start()

func _on_keytimer_timeout():
	if %player.has_key():
		%key.queue_free()
	else:
		pass

func _on_leveltimer_timeout():
	if %player.has_key() == true:
		get_tree().change_scene_to_file("res://scenes/world_2.tscn")
	else:
		pass
