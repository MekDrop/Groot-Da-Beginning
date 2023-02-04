_width = bbox_right - bbox_left;
_height = bbox_bottom - bbox_top;

draw_sprite_stretched_ext(icon, 0, bbox_left + padding, bbox_top + padding, _width - padding * 2, _height - padding * 2, image_blend, image_alpha);

draw_self();