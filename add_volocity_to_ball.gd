extends RigidBody3D
 

var previous_velocity = Vector3(0,0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	previous_velocity = linear_velocity


func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if Input.is_action_just_pressed("hit"):
		linear_velocity = normal.normalized() * -3
		print("click")
