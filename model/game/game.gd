
extends Node2D
@onready var ui = preload("res://model/ui/ui.tscn")
@onready var object = preload("res://model/object/object.tscn")
@export var wait_time :int 
@export var speed :int 
@export var RectPoint:Vector2
@export var RectSize:Vector2
var area
var myUi
var timer =Timer.new()

# Called when the node enters the scene tree for th first time.
func _ready():
	myUi=ui.instantiate()
	add_child(myUi)
	area=Rect2(RectPoint, RectSize)
	timer.autostart=true
	timer.wait_time=wait_time
	timer.connect("timeout",create_object)
	timer.connect("timeout",speed_change)
	add_child(timer)
	timer.start()

func _draw():
	draw_rect(area, Color(1, 0, 0), false)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass
func speed_change():
	speed+=10
func create_object():
	print("create a object")
	var OB=object.instantiate();
	var random_position = get_random_position_in_area(area)
	var sp = OB.get_node("Sprite2D")
	sp.speed=speed
	sp.get_node("Area2D").connect("disappear",updateScore)
	OB.position=random_position
	add_child(OB)
	print("随机生成的坐标: ", random_position)
	
func get_random_position_in_area(area: Rect2) -> Vector2:
	var random_x = randf_range(area.position.x, area.position.x + area.size.x)
	var random_y = randf_range(area.position.y, area.position.y + area.size.y)
	return Vector2(random_x, random_y)
	
func updateScore():
	myUi.emit_signal("ScoreUpdate")
	print("DIS")
