extends Sprite2D
@export var speed:int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y=position.y+speed*delta
	if(position.y>1000):
		get_parent().queue_free()
	
#func _input(event):
#	if event is InputEventMouseButton:
#		if event.button_index == MOUSE_BUTTON_LEFT and  event.pressed:
#			var global_pos = event.position
#			if self.get_rect().has_point(to_local(global_pos)):
#				emit_signal("disappear")
#				queue_free() # 删除节点
