extends Node

const MAIN = preload("uid://xw0pohgdq7vc")
const GAME = preload("uid://d3yxjc7y1eu62")
const SIMPLE_TRANSITION = preload("uid://47dgd0ooqcc7")

var next_scene: PackedScene

func load_game_scene() -> void:
	next_scene = GAME
	get_tree().change_scene_to_packed(SIMPLE_TRANSITION)

func load_main_scene() -> void:
	next_scene = MAIN
	get_tree().change_scene_to_packed(SIMPLE_TRANSITION)
