extends ColorRect

# Default idle CTR setting
const scanlines_opacity = 0.1
const scanlines_width = 0.25
const grille_opacity = 0.25
const roll_speed = 4
const roll_size = 90
const roll_variation = 5
const distort_intensity = 0.003
const noise_opacity = 0
const noise_speed = 3
const static_noise_intensity = 0.06
const aberration = 0
const brightness = 1.4

func start_screen_change_anim():
	var duration = 0.5
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_method(
		func(value): self.material.set_shader_parameter("scanlines_opacity", value), 
		0.5, 
		scanlines_opacity, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)

	tween.tween_method(
		func(value): self.material.set_shader_parameter("scanlines_width", value), 
		0.3, 
		scanlines_width, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)

	tween.tween_method(
		func(value): self.material.set_shader_parameter("grille_opacity", value), 
		0.345, 
		grille_opacity, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)
		
	tween.tween_method(
		func(value): self.material.set_shader_parameter("roll_speed", value), 
		15, 
		roll_speed, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)
		
	tween.tween_method(
		func(value): self.material.set_shader_parameter("roll_size", value), 
		7, 
		roll_size, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)

	tween.tween_method(
		func(value): self.material.set_shader_parameter("roll_variation", value), 
		5, 
		roll_variation, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)
		
	tween.tween_method(
		func(value): self.material.set_shader_parameter("distort_intensity", value), 
		0.2, 
		distort_intensity, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)

	tween.tween_method(
		func(value): self.material.set_shader_parameter("noise_opacity", value), 
		0.15, 
		noise_opacity, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)
		
	tween.tween_method(
		func(value): self.material.set_shader_parameter("noise_speed", value), 
		5, 
		noise_speed, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)

	tween.tween_method(
		func(value): self.material.set_shader_parameter("static_noise_intensity", value), 
		0.3, 
		static_noise_intensity, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)

	tween.tween_method(
		func(value): self.material.set_shader_parameter("aberration", value), 
		0.6, 
		aberration, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)

	tween.tween_method(
		func(value): self.material.set_shader_parameter("brightness", value), 
		1.4, 
		brightness, 
		duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)

func set_default_crt():
	self.material.set_shader_parameter("scanlines_opacity", scanlines_opacity)
	self.material.set_shader_parameter("scanlines_width", scanlines_width)
	self.material.set_shader_parameter("grille_opacity", grille_opacity)
	self.material.set_shader_parameter("roll_speed", roll_speed)
	self.material.set_shader_parameter("roll_size", roll_size)
	self.material.set_shader_parameter("roll_variation", roll_variation)
	self.material.set_shader_parameter("distort_intensity", distort_intensity)
	self.material.set_shader_parameter("noise_opacity", noise_opacity)
	self.material.set_shader_parameter("noise_speed", noise_speed)
	self.material.set_shader_parameter("static_noise_intensity", static_noise_intensity)
	self.material.set_shader_parameter("aberration", aberration)
	self.material.set_shader_parameter("brightness", brightness)
