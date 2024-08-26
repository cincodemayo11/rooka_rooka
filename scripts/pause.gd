extends Control

@onready var main = $"../../"

func _on_resume_pressed():
	main.pause()

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
	Engine.time_scale = 1

func _on_quit_pressed():
	get_tree().quit()
