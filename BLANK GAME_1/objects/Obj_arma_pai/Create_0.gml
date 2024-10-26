/// @description Insert description here
// You can write your code in this editor
atirar =false;

//delay para atirar
cadencia = 0;
dono = noone;
delay_pega = 0;



//metodo de atirar

atirando = function()
{
	cadencia--;
	if (atirar)
	{
		cadencia--;
		if(cadencia <= 0)
		{
			cadencia = delaytiro * game_get_speed(gamespeed_fps) ;
			
			var _x = lengthdir_x(sprite_height, image_angle);
			var _y = lengthdir_x(sprite_height, image_angle);
			
			var _tiro = instance_create_layer(x - (_x/10), y - (_y/10) , layer, bala);
			_tiro.speed = velocidadetiro
			_tiro.direction = image_angle + random_range(- inpresisao, + inpresisao);
			
			// dando knock back para o dono da arma
			if (dono)
			{
				//pegando a direcao contraria para aplicar forca
				
				var _velh = lengthdir_x ( knock , image_angle)
				var _velv = lengthdir_y ( knock , image_angle)
				
				dono.velh -= _velh;
				dono.velv -= _velv;
			}
			
			
		}

}
}

//colisao na parede

quica_parede = function()
{
	if(place_meeting(x + hspeed, y, Obj_block)) hspeed *= -1;
	if(place_meeting(x, y + vspeed, Obj_block)) hspeed *= -1;
}