fov = 1.3328
sensitivity = 0.500213
managers.user:set_setting("fov_multiplier", fov)
managers.user:set_setting("camera_sensitivity_x", sensitivity)
managers.user:set_setting("camera_sensitivity_y", sensitivity)
managers.user:set_setting("camera_zoom_sensitivity_x", sensitivity)
managers.user:set_setting("camera_zoom_sensitivity_y", sensitivity)
if alive(managers.player:player_unit()) then
	managers.player:player_unit():movement():current_state():update_fov_external()
end