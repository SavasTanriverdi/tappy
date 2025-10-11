extends Control

@onready var press_space_label: Label = $PressSpaceLabel
@onready var game_over_label: Label = $GameOverLabel
@onready var timer: Timer = $Timer
@onready var score_label: Label = $MarginContainer/ScoreLabel
@onready var sound: AudioStreamPlayer = $Sound

const GAME_OVER = preload("uid://wjnyhwhbyrd")

var _can_press: bool = false
var _score: int = 0


func _ready() -> void:
	_score = 0

func _enter_tree() -> void:
	SignalHub.on_plane_died.connect(on_plane_died)
	SignalHub.on_point_scored.connect(on_point_scored)


func on_point_scored() -> void:
	sound.play()
	_score += 1
	score_label.text = "%04d" % _score


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		GameManager.load_main_scene()
		ScoreManager.high_score = _score
	elif (_can_press == true and event.is_action_pressed("jump")):
		GameManager.load_game_scene()
		ScoreManager.high_score = _score
		


func on_plane_died() -> void:
	sound.stop()
	sound.stream = GAME_OVER
	sound.play()
	game_over_label.show()
	timer.start()


func _on_timer_timeout() -> void:
	press_space_label.show()
	_can_press = true
