/// @description Insert description here
// You can write your code in this editor
depth = -bbox_bottom;

var up, down, left, right;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

//logica cima baixo e esquerda direita
//velh = (right - left) * maxvel;
//velv = (down - up) * maxvel;


//check se esta parado

if (up xor down or left xor right)
{
	//direcao do movimento e setado velocidade quando parado
	move_dir = point_direction(0, 0, (right - left), (down - up));
	//aceleraçao
	vel = maxvel;
	
}
else
{
	vel = lerp(vel, 0, 0.2);
}
//gerando movimentaçao
velh = lengthdir_x(vel, move_dir);
velv = lengthdir_y(vel, move_dir);

jogando_arma()

