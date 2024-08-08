extends Node2D
@onready var Score=$score
@onready var theScore :int =0
signal ScoreUpdate
# Called when the node enters the scene tree for the first time.
func _ready():
	Score.text=str( theScore)
	connect("ScoreUpdate",ScoreUpdatef)
	pass # Replace with function body.

func ScoreUpdatef():
	theScore+=1
	Score.text=str(theScore)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
