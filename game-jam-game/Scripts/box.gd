extends Area2D

@onready var truck: Area2D = $"."
@export var speed = 1000

var dragging = false
var offset = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# makes box give money and deletes it
func _on_area_entered(area: Area2D) -> void:
	if area is Truck:
		get_tree().call_group("GameManager", "add_money")
		queue_free()

func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - offset

func _on_button_button_down() -> void:
	dragging = true
	offset = get_global_mouse_position() - global_position


func _on_button_button_up() -> void:
	dragging = false
