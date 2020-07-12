/// @description

cam = view_camera[0];
follow = oBall;
w = camera_get_view_width(cam)
h = camera_get_view_height(cam)
view_w_half = w * 0.5;
view_h_half = h * 0.5;
xToFollow = xstart;
yToFollow = ystart;
buff = 32;