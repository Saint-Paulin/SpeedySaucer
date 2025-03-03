extends RigidBody2D

@export var force : float = 1500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#apply_force(Vector2(25, -50))
	print(add(10, 20))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	#apply_force(Vector2(25, 50))
	playerMovement()
	
func playerMovement():
	#var force = 100
	if Input.is_action_pressed("left"):
		apply_force(Vector2(-force, 0))
	if Input.is_action_pressed("right"):
		apply_force(Vector2(force, 0))
	if Input.is_action_pressed("up"):
		apply_force(Vector2(0, -force))
	if Input.is_action_pressed("down"):
		apply_force(Vector2(0, force))

func add(param_a: int, param_b: int):
	return (param_a+param_b)


func _on_maze_body_exited(body: Node2D) -> void:
	print("Player exited")
