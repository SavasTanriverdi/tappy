extends Node

const MAIN = preload("uid://xw0pohgdq7vc")
const GAME = preload("uid://d3yxjc7y1eu62")


func load_game_scene() -> void:
	get_tree().change_scene_to_packed(GAME)

func load_main_scene() -> void:
	get_tree().change_scene_to_packed(MAIN)
