extends Area2D

@onready var timer: Timer = $Timer
@onready var hurt_sound: AudioStreamPlayer2D = $HurtSound

func _on_body_entered(body: Node2D) -> void:
	hurt_sound.play()
	body.get_node("CollisionShape2D").queue_free()




func _on_hurt_sound_finished() -> void:
	get_tree().change_scene_to_file("res://scenes/death_screen.tscn")
