extends KinematicBody2D

var speed = 200
var dir = Vector2.ZERO
var bala = preload("res://Scenes/Bullet.tscn")
var atirando = false

func _ready():
	pass
	
func _physics_process(delta):
	dir.x = Input.get_axis("ui_left", "ui_right")
	dir.y = Input.get_axis("ui_up", "ui_down")
	move_and_slide(dir.normalized() * speed)
	
	
	if Input.is_action_pressed("ui_fire") and !atirando:
		var b = bala.instance()
		b.global_position = $barrel/muzzle.global_position
		get_parent().add_child(b)
		atirando = true
		$Timer.start()
		
		pass
			


func _on_Timer_timeout():
	atirando = false
