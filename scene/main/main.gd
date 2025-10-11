extends Control

@onready var highscore_libel: Label = $MarginContainer/HighscoreLibel

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		GameManager.load_game_scene()

func _ready() -> void:
	get_tree().paused = false
	highscore_libel.text = "%04d" % ScoreManager.high_score
