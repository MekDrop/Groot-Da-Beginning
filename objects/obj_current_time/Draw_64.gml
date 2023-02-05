_month = getMonthStr();
_year = getYearStr();
draw_text(bbox_left, bbox_top, _month);
draw_text(bbox_left, bbox_top + string_height(_month), _year);
