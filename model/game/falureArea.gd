extends Area2D
signal gameover

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("area_entered",area_enter)


func area_enter(area):
	emit_signal("gameover")
	print("YES!!!")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
