extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$PinSumitted.text = "Pins submitted :"+ String(global.tags)
	$Label.text = "Pins in progress: " + String(global.done)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://main.tscn")
	pass # replace with function body
