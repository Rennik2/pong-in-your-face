extends RigidBody3D
var was_hit = false
func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if Input.is_action_just_pressed("hit"):
		linear_velocity = normal.normalized() * -10
		was_hit = true
		print("click")



func _on_body_entered(body: Node) -> void:
	if was_hit:
		SceneData.score += 1
		was_hit = false 
