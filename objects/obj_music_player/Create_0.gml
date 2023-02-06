function start() {
    audio_play_sound(music, 5, true);
}

function stop() {
	audio_stop_sound(music);
}

if (obj_game_manager.settings.music.enabled) {
   start();
}