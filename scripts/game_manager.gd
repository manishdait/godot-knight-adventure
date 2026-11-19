extends Node

var coins = 0

@onready var score_label: Label = $ScoreLabel

func collect_coin():
	coins += 1
	score_label.text = "You collected " + str(coins) + " coins"
	
