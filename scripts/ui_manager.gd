extends Node

@onready var right_button: Button = $RightButton
@onready var left_button: Button = $LeftButton
@onready var up_button: Button = $UpButton
@onready var down_button: Button = $DownButton

func get_right_pressed():
	return right_button.pressed
func get_left_pressed():
	return left_button.pressed
func get_up_pressed():
	return up_button.pressed
func get_down_pressed():
	return down_button.pressed
