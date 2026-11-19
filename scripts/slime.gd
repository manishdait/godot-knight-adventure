extends StaticBody2D

const SPEED = 40

var direction = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_bottom: RayCast2D = $RayCastBottom
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		flip_direction()

	if ray_cast_left.is_colliding():
		flip_direction()
	
	if not ray_cast_bottom.is_colliding():
		flip_direction()
		
	position.x += direction * SPEED * delta


func flip_direction() -> void:
	direction *= -1
	animated_sprite.flip_h = direction == -1
	
