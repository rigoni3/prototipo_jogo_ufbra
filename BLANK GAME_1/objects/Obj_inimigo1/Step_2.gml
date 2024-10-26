/// @description Insert description here
// You can write your code in this editor

//colizao horizontal
if (place_meeting(x + velh, y, Obj_block))
{
	var _velh = sign(velh);
	while(! place_meeting(x + _velh, y , Obj_block))
	{
		x += _velh;
	}
	velh = 0
}
x += velh

//e vertical

if (place_meeting(x , y + velv, Obj_block))
{
	var _velv = sign(velv);
	while(! place_meeting(x , y + _velv, Obj_block))
	{
		y += _velv;
	}
	velv = 0
}
y += velv