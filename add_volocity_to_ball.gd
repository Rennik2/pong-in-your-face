extends RigidBody3D

var previousVelocity = Vector3(0,0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	previousVelocity = linear_velocity


func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if Input.is_action_just_pressed("hit"):
		apply_force(Vector3(0,0,-1000))


func _on_body_entered(body: Node) -> void:
	print(body.name)
