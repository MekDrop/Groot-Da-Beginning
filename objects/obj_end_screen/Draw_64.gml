
/// @description Insert description here
// You can write your code in this editor

if (obj_game_manager.gameOver && not obj_game_manager.endTurns) {
	drawEndScreen(str("gameover"));
}

if (obj_game_manager.endTurns) {
	drawEndScreen(str("endturns"));
}