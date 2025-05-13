extends Node

var tween: Tween
var camera2D: Camera2D
var transition: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func transitionCamera(from: Camera2D, to: Camera2D, duration: float = 0.2) -> void:
	pass
	
