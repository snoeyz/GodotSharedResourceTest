extends Area2D

func _on_body_entered(body):
	if body.has_method("pickup_croc"):
		body.pickup_croc()
		queue_free()
