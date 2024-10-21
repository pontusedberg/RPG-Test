class_name Player
extends CharacterBody2D

var stats: CharacterStats = null

@onready var current_health: int = stats.Health

func load_stats(character_stats: CharacterStats) -> void:
	stats = character_stats
