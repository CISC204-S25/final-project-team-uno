extends Node2D
#Globals: NumberSystem

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(_area):
	GlobalNumberSystem.MedalsCollected += 1
	hide()
	queue_free()
