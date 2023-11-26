extends Area2D

@export var damage = 1
@onready var collision = $CollisionShape2D
@onready var disableTimer = $DisabledHitBoxTimer

func tempdisable():
	collision.call_deferred("set", "disabled", true)
	disableTimer.start()
	
	
func _on_disabled_hit_box_timer_timeout():
	collision.call_deferred("set", "disabled", false)
