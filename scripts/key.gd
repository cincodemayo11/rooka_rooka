extends Area2D

var gotten = false
var leeway : Vector2 = Vector2(0,30)

func _on_body_entered(body):
	if body == %player:
		#queue_free()
		$Sprite2D.play("default")
		gotten = true
		body.set_key(true)
		
func _physics_process(delta):
	if gotten == true:
		position += ((%player.position - leeway) - position) / 10
