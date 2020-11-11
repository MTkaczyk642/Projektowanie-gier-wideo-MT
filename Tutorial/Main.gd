extends Node

export (PackedScene) var Mob
var score

func _ready():
	randomize()
	new_game()


func game_over():
	$score_timer.stop()
	$Mob_timer.stop()

func new_game():
	score = 0
	$Player2.start($Start_position.position)
	$start_timer.start()


func _on_start_timer_timeout():
	$Mob_timer.start()
	$score_timer.start()

func _on_score_timer_timeout():
	score += 1
	
func _on_Mob_timer_timeout():
	$Mob_path/Mob_spawn_location.offset = randi()
	var mob = Mob.instance()
	add_child(mob)
	var direction = $Mob_path/Mob_spawn_location.rotation + PI / 2
	mob.position = $Mob_path/Mob_spawn_location.position
	direction += rand_range(-PI / 4, PI / 4)
	mob.rotation = direction
	mob.linear_velocity = Vector2(rand_range(mob.min_speed, mob.max_speed), 0)
	mob.linear_velocity = mob.linear_velocity.rotated(direction)
