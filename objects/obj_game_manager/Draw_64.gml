/// @description Insert description here
// You can write your code in this editor

if (gameOver && not endTurns) {
	draw_set_color( c_black );
	draw_set_alpha( 0.8 );
	draw_rectangle( 0,0, room_width, room_width, false );
	draw_set_alpha( 1 );
	draw_set_color( c_red );
	draw_set_font(Alkatra40);
	// draw_text(room_width / 2, room_height / 2, string_length()("gameover"));
	draw_text((room_width / 2) - string_length(str("gameover")), room_height / 2, str("gameover"));
	draw_text(room_width / 2, room_height / 5, str("finalscore"));
	draw_text(room_width / 2, room_height / 4, (obj_game_manager.heightTreeLevel + obj_game_manager.rootTreeLevel + obj_game_manager.widthTreeLevel + obj_game_manager.colorTreeLevel));
}

if (endTurns) {
	draw_set_color( c_black );
	draw_set_alpha( 0.8 );
	draw_rectangle( 0,0, room_width, room_width, false );
	draw_set_alpha( 1 );
	draw_set_color( c_red );
	draw_set_font(Alkatra40);
	draw_text(room_width / 2, room_height / 2, str("endturns"));
	draw_text(room_width / 2, room_height / 5, str("finalscore"));
	draw_text(room_width / 2, room_height / 4, (obj_game_manager.heightTreeLevel + obj_game_manager.rootTreeLevel + obj_game_manager.widthTreeLevel + obj_game_manager.colorTreeLevel));
}