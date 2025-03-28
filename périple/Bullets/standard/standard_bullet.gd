extends CharacterBody2D

@export var speed = 100

var dir : float
var spawnPos : Vector2
var spawnRot : float
var zdex : int

func _ready():
	global_position = spawnPos
	global_rotation = spawnRot
	z_index = zdex

func _physics_process(delta):
	velocity = Vector2(0, -speed).rotated(dir)
	move_and_slide()

func _on_standard_bullet_area_body_entered(body):
	print("hit")
	queue_free()

func _on_despawner_timeout():
	queue_free()
