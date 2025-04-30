extends StaticBody2D


func _on_platform_duration_timeout():
	queue_free()
