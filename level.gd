extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hellow world")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_maze_body_exited(body: Node2D) -> void:
	print("Body exited")
	get_tree().change_scene_to_file("res://level_1.tscn")
