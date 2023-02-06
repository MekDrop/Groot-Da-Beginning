function drawEndScreen(gameOverStr) {
	instance_deactivate_object( obj_action_button );
	instance_deactivate_object(obj_current_time);

	draw_set_color( c_black );
	draw_set_alpha( 0.8 );
	draw_rectangle( 0,0, room_width, room_width, false );
	draw_set_alpha( 1 );
	draw_set_color( c_red );
	draw_set_font(Alkatra40);
	_old_valign = draw_get_valign();
	_old_halign = draw_get_halign();
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	_game_over_height = string_height(gameOverStr);
	draw_text(room_width / 2, room_height / 2, gameOverStr);
	draw_set_color( c_grey );
	draw_set_font(Alkatra20);
	_final_score_str = str("finalscore", {score: obj_game_manager.getFinalScore()});
	draw_text(room_width / 2, room_height / 2 - _game_over_height, _final_score_str);
	
	draw_set_font(Alkatra);
	draw_set_valign(_old_valign);
	draw_set_halign(_old_halign);
}

sound_played = false;

function playSoundOnce(sound) {
  if (not sound_played) {
	audio_play_sound(sound, 1000, false);
	sound_played = true;
  }
}