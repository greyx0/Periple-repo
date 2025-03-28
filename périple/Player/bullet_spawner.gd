extends Node2D

@onready var main = get_tree().get_root().get_node("Main")
@onready var bullet = load("res://Bullets/standard/standard_bullet.tscn")


func _physics_process(delta):
	pass

func shoot():
	var instance = bullet.instantiate()
	instance.dir = rotation
	instance.spawnPos = global_position
	instance.spawnRot = rotation
	instance.zdex = z_index -1
	main.add_child.call_deferred(instance)

func _on_cooldown_timeout():
	shoot()
