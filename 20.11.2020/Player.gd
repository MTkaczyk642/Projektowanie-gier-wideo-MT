extends KinematicBody

var kierunek = Vector3()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		kierunek.x -= 1
	if Input.is_action_pressed("ui_right"):
		kierunek.x += 1
	if Input.is_action_pressed("ui_up"):
		kierunek.z -= 1
	if Input.is_action_pressed("ui_down"):
		kierunek.z += 1
	kierunek = kierunek.normalized()
	move_and_slide(kierunek, Vector3(0,1,0))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
