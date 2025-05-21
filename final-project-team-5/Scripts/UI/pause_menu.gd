extends Control

var paused = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		GamePaused()
	
func GamePaused():
	if paused == true:
		hide()
		Engine.time_scale = 1
	else:
		show()
		Engine.time_scale = 0
		
	paused = !paused


func _on_return_to_game_pressed():
	GamePaused()
