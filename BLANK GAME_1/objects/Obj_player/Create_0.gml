/// @description Insert description here
// You can write your code in this editor

//variaveisset
velh = 0;
velv = 0;
maxvel = 5;
vel = 0;
move_dir = 0;

arma = noone

//metodo de pegar itens
usa_arma = function()
{
	if(arma)
	{
		var _fire = mouse_check_button(mb_left);
		arma.atirar = _fire;
		
		var _dir = point_direction(x, y, mouse_x, mouse_y);
		
		//posiçao da arma
		var _x = x + lengthdir_x(sprite_width, _dir);
		var _y = y + lengthdir_y(sprite_height, _dir);
		
		//levado a arma
		arma.x = _x;
		arma.y = _y;
		//apontar para o mouse
		arma.image_angle =_dir;
	}
}

//dropando arma metodo
jogando_arma = function()
{
	if (arma)
	{
		var _drop = keyboard_check_released(ord("G"));
		
		//desativado quaso dentro de parede
		var _col;
		with(arma)
		{
			_col = place_meeting(x, y, Obj_block)
		}
		
			if (_drop && !_col)
		{
			arma.speed = 3;
			arma.direction = arma.image_angle;
			//inpedido arma de atirar sosinha
			
			arma.atirar =false;
			
			arma.dono = noone;
			arma.delay_pega = game_get_speed(gamespeed_fps) * 2
				arma = noone;
		}
	}
}