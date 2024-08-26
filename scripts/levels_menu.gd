extends Button



func _on_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")

func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://scenes/world_2.tscn")

func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://scenes/world_3.tscn")

func _on_back_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
