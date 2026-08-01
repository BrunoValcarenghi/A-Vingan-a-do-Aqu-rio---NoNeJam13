function criando_personagens(){
	//personagens
	global.Juquinha = new criar_personagem ("Juquinha",	"", true, spr_player, 80, 40, 30, 20, 1)
	global.Cachorro = new criar_personagem ("Cachorro",	"", true, spr_cachorro, 80, 20, 20, 20, 5)
	global.Mago = new criar_personagem ("Mago",	"", true, spr_mago, 80, 20, 20, 20, 15)

	//inimigos
	global.rato = new criar_personagem("Rato", "",  false, spr_rato, 50, 10, 5, 15, 1)
	global.rato_grande = new criar_personagem("Rato Grande", "",  false, spr_rato_grande, 80, 10, 15, 10, 1)
																												 
	//bosses
}

function criar_personagem(_nome, _desc, _bom, _sprite, _hp, _atk, _def, _spd, _lvl) constructor{

//caracteristica
nome = _nome
desc = _desc
bom = _bom
sprite = _sprite

//stats
hp  = _hp  
atk = _atk
def = _def
spd = _spd

//variaveis
vida = hp;
lvl = _lvl

if bom{xp = 0}
else{xp = floor(hp * (1 + lvl/10))} //arrumar xp

}

