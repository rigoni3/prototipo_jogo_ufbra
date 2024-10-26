/// @description Insert description here
// pegando arma caso nao tenha uma
if (other.arma == noone && delay_pega <= 0)
{
	other.arma = id;
	dono = other.id;
}