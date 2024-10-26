/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

atirando = function()
{
	cadencia--;
	if (atirar)
	{
		cadencia--;
		if(cadencia <= 0)
		{
			cadencia = delaytiro * game_get_speed(gamespeed_fps) ;
			
			for (var i = 0; i < qdt ; i ++)
			{
			
				
				var _dir = - 45 + (i * 45);
				
				var _x = lengthdir_x(sprite_height, image_angle /*+ _dir*/);
				var _y = lengthdir_x(sprite_height, image_angle /*+ _dir*/);
			
				var _tiro = instance_create_layer(x - (_x/10), y - (_y/10) , layer, bala);
				_tiro.speed = velocidadetiro
				_tiro.direction = image_angle + random_range(- inpresisao, + inpresisao) //+ _dir;
			}
			// dando knock back para o dono da arma
			if (dono)
			{
				//pegando a direcao contraria para aplicar forca
				
				var _velh = lengthdir_x ( 30 , image_angle)
				var _velv = lengthdir_y ( 30 , image_angle)
				
				dono.velh -= _velh;
				dono.velv -= _velv;
			}
			
			
		}

}
}