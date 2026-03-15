extends Node

class_name Game_Manager

@onready var money_label: Label = $MoneyLabel
@onready var morale_label: Label = $MoraleLabel
var money = 0
var morale = 0
var debt = 200
var dayCount = 0

#function that increases money
func add_money():
	money += 100
	money_label.text = "Money = " + str(money) + "$"

#function that increases morale
func add_morale():
	morale += 1
	print(morale)

#scales debt per day
func increase_debt_per_day():
	debt *= 1.5

#subtracts money with debt
func debt_collector():
	money -= debt
	print()

#increases day count
func increase_day_count():
	dayCount += 1
	print()
	money_label.text = "Money = " + str(money) + "$"

# sends you to game over scene
func game_over():
	
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")

#resets the values (redundant but keep incase)
func reset():
	dayCount = 0
	money = 0
	debt = 200
	morale = 0
