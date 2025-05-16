extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	# Check if the player entered
	if body.is_in_group("CharacterBody2D"):
		# Change to the next scene
		get_tree().change_scene("res://Scenes/Levels/tutorial_level.tscn")
