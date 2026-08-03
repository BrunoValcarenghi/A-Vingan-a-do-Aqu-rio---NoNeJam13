function criando_personagens(){
	//personagens
	global.Juquinha = new criar_personagem	("Juquinha","",		true, spr_player,	80, 40, 30, 20, 01)
	global.Cachorro = new criar_personagem	("Cachorro","",		true, spr_cachorro, 130, 69, 53, 56, 05)
	global.Mago = new criar_personagem		("Mago",	"",		true, spr_mago,		80, 20, 20, 20, 15)

	//inimigos
	global.rato =			new criar_personagem("Rato", "",		false, spr_rato,		40, 10, 05, 15, 01)
	global.rato_grande =	new criar_personagem("Rato Grande", "",	false, spr_rato_grande, 60, 12, 15, 10, 01)
	global.goblin =			new criar_personagem("Goblin", "",		false, spr_goblin,		80, 15, 10, 25, 01)
	global.ladrao =			new criar_personagem("Ladrao", "",		false, spr_ladrao,	   100, 30, 30, 30, 01)
	global.elfo =			new criar_personagem("Elfo", "",		false, spr_elfo,		80, 20, 20, 50, 01)
	global.elfo_guarda =	new criar_personagem("Elfo Guarda", "",	false, spr_elfo_guarda,120, 30, 40, 45, 01)
	global.elfo_mago =		new criar_personagem("Elfo Mago", "",	false, spr_elfo_mago,   90, 40, 30, 70, 01)
																												 
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
else{xp = floor(hp * (3 + lvl/10))} //arrumar xp

}

