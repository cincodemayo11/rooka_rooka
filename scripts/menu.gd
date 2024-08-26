extends Control

func resume():
	get_tree().paused = false
	
func main_menu():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

func quit():
	get_tree().quit()

func _on_resume_pressed():
	resume()
	
func _on_main_menu_pressed():
	main_menu()

func _on_quit_pressed():
	quit()
