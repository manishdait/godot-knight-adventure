extends Area2D

@onready var timer: Timer = $Timer
@onready var hurt_sound: AudioStreamPlayer2D = $HurtSound

func _on_body_entered(body: Node2D) -> void:
	hurt_sound.play()
	body.get_node("CollisionShape2D").queue_free()
	print("You Died")
	timer.start()
	

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
