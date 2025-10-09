extends Control

const GAME = preload("uid://d3yxjc7y1eu62")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		print(event)
		get_tree().change_scene_to_packed(GAME)

func _ready() -> void:
	pass 
