extends Timer
@onready var day_cycle: Timer = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# day finishes
func _on_timeout() -> void:
	get_tree().call_group("GameManager", "debt_collector")
	get_tree().call_group("GameManager", "increase_debt_per_day")
	get_tree().call_group("GameManager", "increase_day_count")
	get_tree().call_group("GameManager", "game_over")


# day start
func DayStart():
	if GameManager.money > 0 or GameManager.morale >= 0:
		get_tree().call_group("GameManager", "game_over")
	$".".start()
