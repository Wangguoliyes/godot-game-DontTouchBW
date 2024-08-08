extends Node2D

var rng = RandomNumberGenerator.new()
@onready var music_tracks = [
	preload("res://music/music1.mp3"),
	preload("res://music/music2.mp3"),
	preload("res://music/music3.mp3"),
	preload("res://music/music4.mp3")
]
@onready var audio = $AudioStreamPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	while(1):
		var index = rng.randi_range(0, music_tracks.size() - 1)
		audio.stream=music_tracks[index]
		audio.play()
		await audio.finished
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
