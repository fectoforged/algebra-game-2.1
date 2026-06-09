extends Area2D

@onready var game_manager: Node = %GameManager

@onready var control: Control = $Control

@onready var label: Label = $Control/PanelContainer/MarginContainer/VBoxContainer/Label

# Called when the coin enters the scene tree for the first time.
func _ready() -> void:
	pass #label.set_visible(false)

@onready var panel_container: PanelContainer = $PanelContainer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

#When a player touches a coin
func _on_body_entered(_body: Node2D) -> void:
	pass #panel_container.set_visible(true) 

#If the question is accepted:
func question_correct() -> void:
	game_manager.add_point()
	queue_free()

#If the question is too difficult or is answered incorrectly
func question_incorrect() -> void:
	print("To answer this question, you would add 1 and 1 together, making 2.")
