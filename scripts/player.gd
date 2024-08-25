extends CharacterBody2D

const JUMP_POWER = -1000
const SPEED = 150
const ACC = 40
var FRICTION = 50
var GRAVITY = 70
const MAX_JUMPS = 1
var current_jumps = 0
var key_condition = false

func _physics_process(delta):
	var direction = handle_input()
	if direction != Vector2.ZERO:
		accelerate(direction)
	else:
		friction()
	
	move_and_slide()
	jump()
	
	
func handle_input() -> Vector2:
	var direction = Vector2.ZERO
	if Input.is_action_pressed('ui_left'):
		direction.x = -1
	else:
		direction.x = 1#Input.get_axis('ui_left', 'ui_right')
	if direction.x < 0:
		$AnimatedSprite2D.flip_h = false
		
	if direction.x > 0:
		$AnimatedSprite2D.flip_h = true
		
	direction = direction.normalized()
	return direction
	
func accelerate(direction):
	velocity = velocity.move_toward(direction * SPEED, ACC)

func jump():
	if Input.is_action_just_pressed('ui_up') and current_jumps == 0:
		velocity.y = JUMP_POWER
		current_jumps = MAX_JUMPS
	else:
		velocity.y += GRAVITY
		if is_on_floor():
			current_jumps = 0
		
func friction():
	velocity = velocity.move_toward(Vector2.ZERO, FRICTION)
	
func set_key(condition):
	key_condition = condition
	
func has_key():
	return key_condition
	
func set_ice(new_friction, new_gravity):
	FRICTION = new_friction
	GRAVITY = new_gravity
	
func play_anim(animation):
	var animname = str(animation)
	$AnimatedSprite2D.play(animname)
