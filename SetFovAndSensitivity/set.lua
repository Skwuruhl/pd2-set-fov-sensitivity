desired_vFOV = 70.5382 --desired vertical FOV
desired_cm = 30 --desired cm/360
dpi = 800 --mouse DPI

sensitivity = 360 / 0.15 / dpi / desired * 2.54
fov = 2*math.atan(4/3*math.tan(math.rad(desired_vFOV)/2))/math.rad(65)

managers.user:set_setting("fov_multiplier", fov)
managers.user:set_setting("camera_sensitivity_x", sensitivity)
managers.user:set_setting("camera_sensitivity_y", sensitivity)
managers.user:set_setting("camera_zoom_sensitivity_x", sensitivity)
managers.user:set_setting("camera_zoom_sensitivity_y", sensitivity)
if alive(managers.player:player_unit()) then
	managers.player:player_unit():movement():current_state():update_fov_external()
end