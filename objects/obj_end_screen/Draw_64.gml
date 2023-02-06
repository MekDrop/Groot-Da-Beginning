if (obj_game_manager.gameOver && not obj_game_manager.endTurns) {
	drawEndScreen(str("gameover"));
	playSoundOnce(game_over_sound);
}

if (obj_game_manager.endTurns) {
	drawEndScreen(str("endturns"));
	playSoundOnce(end_turns_sound);
}