function getMonthStr() {
	_current_month_id = obj_game_manager.calc_current_month();
	return str("months." + string(_current_month_id));
}

function getYearStr() {
	_current_year = obj_game_manager.calc_current_year();
	return str("current_year", {year: _current_year});
}

function calcLeftPosByCurrentAlign(box_left, box_width, content_width) {
	if (text_align == "center") {
		return (box_left + floor(box_width / 2) - floor(content_width / 2));
	}
	
	return box_left + padding_horizontal;
}