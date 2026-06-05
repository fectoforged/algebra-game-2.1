extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

@onready var confirmation_dialog: ConfirmationDialog = $ConfirmationDialog

func _on_body_entered(_body: Node2D) -> void:
	confirmation_dialog.popup_centered()
	await confirmation_dialog 
	
	#print('+1 Coin!')
	#queue_free()

func _on_question_accepted() -> void:
	print("Correct!")
	print('+1 Coin!')
	queue_free()

func _on_question_rejected() -> void:
	print("To answer this question, you would add 1 and 1 together, making 2.")


func _on_confirmation_dialog_confirmed() -> void:
	_on_question_accepted()


func _on_confirmation_dialog_canceled() -> void:
	_on_question_rejected()
