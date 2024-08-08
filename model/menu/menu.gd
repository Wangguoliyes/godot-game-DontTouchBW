extends Node2D
signal Start

@onready var button = $TextureButton
# Called when the node enters the scene tree for the first time.
func _ready():
	button.pressed.connect(pressed)

func pressed():
	emit_signal("Start")
	print("YES")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
