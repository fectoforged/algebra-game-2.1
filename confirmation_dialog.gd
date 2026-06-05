extends ConfirmationDialog


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_question_accepted() -> void:
	
	print("Correct!")
	print('+1 Coin!')
	queue_free()
	
func _on_question_rejected() -> void:
	print("Incorrect. You seem to have made a mistake with the place value.")
