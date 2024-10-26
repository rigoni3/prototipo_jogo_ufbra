/// @description Insert description here
// You can write your code in this editor

//colizao
var _velh = sign(velh);
repeat(abs(velh))
//movimentaçao e colisao horizontal
{
	if (place_meeting(x +_velh, y, Obj_block))
	{
		velh = 0;
	}
	else
	{
		x += _velh;
	}
}

//movimentaçao e colisao vertical
var _velv = sign(velv);
repeat(abs(velv))

{
	if (place_meeting(x, y + _velv, Obj_block))
	{
		velv = 0;
	}
	else
	{
		y += _velv;
	}
}
usa_arma()