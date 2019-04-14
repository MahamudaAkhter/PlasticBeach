extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	if(global.acceptednew):
		$TextureButton.texture_normal = load("res://images/loading.png")
		$TextureButton.texture_hover = load("res://images/loading_hover.png")
		$TextureButton.texture_pressed = load("res://images/loading_hover.png")
	pass

func _on_TextureButton_pressed():
	global.type = 4
	pass # replace with function body
