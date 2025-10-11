extends CharacterBody2D

class_name Tappy

var _gravity: float = ProjectSettings.get("physics/2d/default_gravity")

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const JUMP_POWER: float = -350.0

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	
	fly(delta)
	
	move_and_slide()
	
	check_floor_collision()

func fly(delta:float) -> void:
	velocity.y += _gravity * delta
	
	if Input.is_action_just_pressed("jump") == true:
		velocity.y = JUMP_POWER
		animation_player.play("jump")

func die() -> void:
	animated_sprite_2d.stop()
	set_physics_process(false)
	SignalHub.on_plane_died.emit()

func check_floor_collision() -> void:
	if is_on_floor():
		die()
