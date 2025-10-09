extends Node2D

const PIPES = preload("uid://38761cdnq5do")
var MAIN = load("uid://xw0pohgdq7vc")

@onready var pipes_holder: Node = $PipesHolder
@onready var upper_point: Marker2D = $UpperPoint
@onready var lower_point: Marker2D = $LowerPoint

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		print(event)
		get_tree().change_scene_to_packed(MAIN)

func _ready() -> void:
	spawn_pipes()

func spawn_pipes() -> void:
	var np = PIPES.instantiate() # sahne (scene) dosyalarından) bir kopya (örnek/instance) oluşturmak için kullanılan metottur.
	var y_pos: float = randf_range(upper_point.position.y, lower_point.position.y)
	
	np.position = Vector2 (upper_point.position.x, y_pos)
	
	pipes_holder.add_child(np)

func _on_spawn_timer_timeout() -> void:
	spawn_pipes()


func _on_plane_died() -> void:
	#get_tree().paused = true
	pass
