class_name PlayerTest
extends CharacterBody2D

@export var stats : CharacterStats

func load_stats(character_stats: CharacterStats) -> void:
	stats = character_stats
