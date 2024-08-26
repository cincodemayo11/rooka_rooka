extends Node2D

@onready var pause_menu = $CanvasLayer/pause_menu

var paused = false

func _process(delta):
	if Input.is_action_just_pressed("Pause") and paused == false:
		paused = true
		
		Engine.time_scale = 0
	elif Input.is_action_just_pressed("Pause") and paused == true:
		paused = false
		#pause_menu.hide()
		Engine.time_scale = 1
	
	if paused == true:
		pause_menu.show()
	else:
		pause_menu.hide()
