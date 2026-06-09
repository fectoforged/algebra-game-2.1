extends Node

@onready var panel_container: PanelContainer = $"../Control/PanelContainer"

@onready var button: Button = $"../Control/PanelContainer/MarginContainer/VBoxContainer/HBoxContainer/Button"

@onready var button_2: Button = $"../Control/PanelContainer/MarginContainer/VBoxContainer/HBoxContainer/Button2"

@onready var button_3: Button = $"../Control/PanelContainer/MarginContainer/VBoxContainer/HBoxContainer2/Button3"

@onready var button_4: Button = $"../Control/PanelContainer/MarginContainer/VBoxContainer/HBoxContainer2/Button4"

@onready var game_manager: Node = %GameManager

@onready var coin: Area2D = $".."



func _on_button_pressed() -> void:
	panel_container.set_visible(false)


func _on_button_2_pressed() -> void:
	coin.question_correct()


func _on_button_3_pressed() -> void:
	panel_container.set_visible(false)

func _on_button_4_pressed() -> void:
	panel_container.set_visible(false)
