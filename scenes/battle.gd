class_name Battle
extends Node3D

@export var enemies: PackedScene
@onready var enemy_handler: EnemyHandler = $EnemyHandler

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#pass
	enemy_handler.setup_enemies()
