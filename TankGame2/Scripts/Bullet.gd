extends Area2D

var speedBullet = 3

func _ready():
	pass
	
func _physics_process(delta):
	
	global_position += Vector2.UP * speedBullet
