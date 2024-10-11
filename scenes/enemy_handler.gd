class_name EnemyHandler
extends Node3D


func setup_enemies() -> void:
	# this enemy i instantiated manually so is not necessary
	for enemy in get_children():
		enemy.queue_free()
	
	var enemyScene = preload("res://battles/2enemies.tres")
	# enemyScene.enemies is the packed scene
	var all_new_enemies = enemyScene.enemies.instantiate()
	for new_enemy: Node3D in all_new_enemies.get_children():
		var new_enemy_child := new_enemy.duplicate()
		add_child(new_enemy_child)
	all_new_enemies.queue_free()	
