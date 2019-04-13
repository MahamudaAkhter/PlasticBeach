extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	$footer/counter.text = "Pins submitted: "+ String(global.tags)
	$footer/counter2.text = "Pins collected: "+ String(global.done)
	if(global.type == 1):
		$panels/available.show()
	if(global.type == 2):
		$panels/progress.show()