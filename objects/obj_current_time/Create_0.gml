function getMonthStr() {
	_current_month_id = obj_game_manager.calc_current_month();
	return str("months." + string(_current_month_id));
}

function getYearStr() {
	_current_year = obj_game_manager.calc_current_year();
	return str("current_year", {year: _current_year});
}