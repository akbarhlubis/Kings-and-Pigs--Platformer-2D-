extends RigidBody2D

var thrust = Vector2(0, -250)
var torque = 20000

func _integrate_forces(state):
	if Input.is_action_pressed("jump"):
		applied_force = thrust.rotated(rotation)
	else:
		applied_force = Vector2()
	var rotation_dir = 0
	if Input.is_action_pressed("right"):
		rotation_dir += 1
	if Input.is_action_pressed("left"):
		rotation_dir -= 1
	applied_torque = rotation_dir * torque
