extends CharacterBody2D

@export var SPEED = 300.0
@onready var player = get_node('/root/Game/Player')

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * SPEED
	move_and_slide()
