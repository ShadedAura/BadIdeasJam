extends Area2D

@onready var game_manager: Node = $"../../GameManager"
var box = preload("res://Scenes/box.tscn")

func _ready() -> void:
	pass
	
#function that spawns the box
func inst(pos):
	var instance = box.instantiate()
	instance.position = pos
	add_child(instance)

#function that tells conveyor belt when to spawn box
func _on_timer_timeout() -> void:
	inst(Vector2())
	$Timer.start()
