

var s=sin(current_time/720)

draw_set_alpha(1)
gpu_set_colorwriteenable(1,0,0,1)
draw_sprite(sprGlitchBackground,0,0,0)
if floor(current_time/64)=(current_time/64) draw_sprite_part(sprGlitchBackground,0,random(360),random(180),random(360),random(180),random(360),random(180))

gpu_set_colorwriteenable(0,1,0,1)
draw_sprite(sprGlitchBackground,0,s,0)
if floor(current_time/64)=(current_time/64) draw_sprite_part(sprGlitchBackground,0,random(360),random(180),random(360),random(180),random(360),random(180))

gpu_set_colorwriteenable(0,0,1,1)
draw_sprite(sprGlitchBackground,0,-s,0)
if floor(current_time/64)=(current_time/64) draw_sprite_part(sprGlitchBackground,0,random(360),random(180),random(360),random(180),random(360),random(180))


draw_set_alpha(1)
gpu_set_colorwriteenable(1,1,1,1)