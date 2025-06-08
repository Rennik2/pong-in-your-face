extends CanvasLayer

func _on_return_to_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_restart_pressed() -> void:
	var ball = %ball
	ball.linear_velocity = Vector3(0,0,0)
	ball.global_position = Vector3(0,3,0)
	SceneData.score = 0 
