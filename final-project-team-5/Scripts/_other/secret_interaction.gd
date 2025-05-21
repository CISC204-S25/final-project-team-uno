extends Area2D

@onready var FloorSquares =  $"../Floorsquares"
var noticed: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	if noticed == false:
		FloorSquares.queue_free()
		noticed = true
