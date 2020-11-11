extends RigidBody2D
export var min_speed = 150
export var max_speed = 250

func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	#mob_types = walk swim fly
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	# randi % = wybiera nam ze zbioru losową daną 
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

