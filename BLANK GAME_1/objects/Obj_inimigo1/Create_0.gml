/// @description Insert description here
// game_get_speed(gamespeed_fps)
randomize();
estado = noone;
tempo_estado = game_get_speed(gamespeed_fps)*5;
timer_estado = 0;
destino_x = x;
destino_y = y;
velh = 0;
velv = 0;
vel = 1;
sprite = sprite_index;
xscale = 1;
yscale = 1;
alvo = noone;

//estado parado

//estado paseia

//estado persegue

//metodo mudanca de estado
muda_estado = function(_estado)
{
	tempo_estado--;
	timer_estado = irandom(tempo_estado);
	if (timer_estado == tempo_estado or tempo_estado <= 0)
	{
		//mudo de estado
		estado = _estado[irandom(array_length(_estado)-1)];
		
		tempo_estado = game_get_speed(gamespeed_fps)*5;
	}
}

//sprite

desenha_sprite = function()
{
	draw_sprite_ext(sprite, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
}


campo_visao = function()
{
	var _x1, _y1, _x2, _y2;
	_x1 = x + 150 ;
	_y1 = y + 150 ;
	_x2 = x - 150;
	_y2 = y - 150 ;
	
	//draw_rectangle(_x1, _y1, _x2, _y2, false);
	//checando se o jogador é visivel
	var _alvo = collision_rectangle(_x1, _y1, _x2, _y2, Obj_player, 0, 1);
	
	if (_alvo) estado = estado_persegue;

	
	
}


//metodo dele parado
estado_parado = function()
{
	image_blend = c_white;
	//zerando velocidae
	velh = 0;
	velv = 0;
	
	
	
	muda_estado([estado_passeando,estado_parado]);
}

//campo de visao




estado_passeando = function()
{
	//paseando
	//checando distancia do destino
	var _dist = point_distance(x,y, destino_x, destino_y);
	//so vou defeinir um destino se estiver proximo dele
	if (_dist < 100)
	{
		//escolhe ponto na sala
		destino_x = random(room_width);
		destino_y = random(room_height);
	}
	
	//achado a direçao do enimigo ao ponto
	var _dir = point_direction(x, y, destino_x, destino_y);
	
	//movendo para coordenadas do ponto
	velh = lengthdir_x(vel, _dir);
	velv = lengthdir_y(vel, _dir);
	
	
	
	muda_estado([estado_parado,estado_passeando]);
}

//estado de perseguiçao
estado_persegue = function()
{
	//perseguir

	var _dir = point_direction(x, y, Obj_player.x, Obj_player.y)
	velh =lengthdir_x(vel, _dir)
	velv =lengthdir_y(vel, _dir)
		
	//pegando distancia do player
	var _dist = point_distance(x, y, Obj_player.x, Obj_player.y)
		
	//atacar
	//if (_dist < 80 ) 	
	//{
		//velh = 0
		//velv = 0
		//image_blend = c_blue
	//}
	
	//desistir
	if (_dist > 150 * 2)
	{
		estado = estado_parado;
	}
	
}


//definindo estado inicial
estado = estado_parado;