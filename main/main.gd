extends Node2D
@onready var musicModel= preload("res://model/music/music.tscn")
@onready var menuModel= preload("res://model/menu/menu.tscn")
@onready var gameModel= preload("res://model/game/game.tscn")
@onready var failureModel= preload("res://model/failure/failure.tscn")
@onready var animation=$AnimationPlayer
var current
var once=true
# Called when the node enters the scene tree for the first time.
func _ready():

	print("ANIMATION")
	current=musicModel.instantiate()
	add_child(current)
	current=menuModel.instantiate()
	current.connect("Start",START)
	add_child(current)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func START():
	animation.play("fadein")
	await animation.animation_finished
	current.queue_free()
	current=gameModel.instantiate()
	current.get_node("failureArea").connect("gameover",gameover)
	add_child(current)
	animation.play("fadeout")
	await animation.animation_finished


	

	
func gameover():
	if once:
		once=false
		print("GMAEOVER")
		current.queue_free()
		current=failureModel.instantiate()
		add_child(current)
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	
	
	
