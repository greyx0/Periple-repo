extends CharacterBody2D

@onready var screen_size = get_viewport_rect().size
@export var speed = 300.0

func _ready():
	pass

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_direction * speed

func _physics_process(delta):

	get_input()
	move_and_slide()
	screen_wrap()

func screen_wrap():
	position.y = wrapf(position.y, 0, screen_size.y)
