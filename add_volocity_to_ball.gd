extends RigidBody3D

func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if Input.is_action_just_pressed("hit"):
		linear_velocity = normal.normalized() * -10
		print("click")
