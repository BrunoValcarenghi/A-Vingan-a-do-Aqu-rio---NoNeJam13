function criando_personagens(){
	//personagens
	global.Juquinha = new criar_personagem	("Juquinha","",		true, spr_player,	080, 40, 30, 20, 01)
	global.Cachorro = new criar_personagem	("Cachorro","",		true, spr_cachorro, 130, 69, 53, 56, 05)
	global.Mago = new criar_personagem		("Mago",	"",		true, spr_mago,		250, 85, 43, 70, 10)

	//inimigos
	global.rato =			new criar_personagem("Rato", "",		false, spr_rato,		40, 10, 05, 15, 01)
	global.rato_grande =	new criar_personagem("Rato Grande", "",	false, spr_rato_grande, 60, 12, 15, 10, 01)
	global.goblin =			new criar_personagem("Goblin", "",		false, spr_goblin,		80, 15, 10, 25, 01)
	global.ladrao =			new criar_personagem("Ladrao", "",		false, spr_ladrao,	   100, 30, 30, 30, 01)
	global.elfo =			new criar_personagem("Elfo", "",		false, spr_elfo,		80, 20, 20, 50, 01)
	global.elfo_guarda =	new criar_personagem("Elfo Guarda", "",	false, spr_elfo_guarda,120, 30, 40, 45, 01)
	global.elfo_mago =		new criar_personagem("Elfo Mago", "",	false, spr_elfo_mago,   90, 40, 30, 70, 01)
																												 
	//bosses
	global.orc_e =			new criar_personagem("Orc ", "",	false, spr_orc,		600, 40, 100, 50, 05)
	global.orc =			new criar_personagem("Orc", "",		false, spr_orc,		600, 40, 040, 50, 05)
	global.golem_m =		new criar_personagem("Golem", "",	false, spr_golem,	800, 00, 020, 50, 10)
	global.golem =			new criar_personagem("Golem", "",	false, spr_golem,	800, 50, 060, 80, 10)
	global.espirito =		new criar_personagem("Espírito", "",false, spr_espirito,900, 40, 060, 90, 15)
	global.boss_rato =		new criar_personagem("Rato Chefe", "",false, spr_boss_rato,		0500, 040, 040, 100, 20)
	global.arquimago =		new criar_personagem("Arquimago", "", false, spr_arquimago,		1000, 70, 080, 120, 30)
	global.arquimago_f =	new criar_personagem("Arquimago", "", false, spr_arquimago,		999, 01, 080, 120, 30)
	global.boss_suspeito =	new criar_personagem("Suspeito", "",  false, spr_boss_suspeito,	999, 70, 040, 020, 01)
	global.boss_cachorro =	new criar_personagem("Cachorro", "",  false, spr_cachorro,		500, 40, 040, 090, 01)
	
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

