extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("area_entered",area_enter)


func area_enter(area):
	area.get_parent().texture=preload("res://pic/854bea7705d8a9e86d52756773960be.png")
	area.get_parent().speed-=50
	print("YES!!!")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
