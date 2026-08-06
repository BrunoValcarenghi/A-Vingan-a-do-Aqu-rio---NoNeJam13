function criando_personagens(){
	//personagens
	global.Juquinha = new criar_personagem	("Juquinha","",		true, spr_player,	080, 40, 30, 20, 01, 0)
	global.Cachorro = new criar_personagem	("Cachorro","",		true, spr_cachorro, 130, 69, 53, 56, 05, 0)
	global.Mago = new criar_personagem		("Mago",	"",		true, spr_mago,		250, 85, 43, 70, 10, 0)

	//inimigos
	global.rato =			new criar_personagem("Rato", "",		false, spr_rato,		40, 10, 05, 15, 01, 1)
	global.rato_grande =	new criar_personagem("Rato Grande", "",	false, spr_rato_grande, 60, 12, 15, 10, 01, 1)
	global.goblin =			new criar_personagem("Goblin", "",		false, spr_goblin,		50, 15, 10, 25, 01, 1)
	global.ladrao =			new criar_personagem("Ladrao", "",		false, spr_ladrao,	    90, 20, 30, 30, 01, 1)
	global.elfo =			new criar_personagem("Elfo", "",		false, spr_elfo,		70, 15, 20, 50, 01, 1)
	global.elfo_guarda =	new criar_personagem("Elfo Guarda", "",	false, spr_elfo_guarda,100, 20, 40, 45, 01, 1)
	global.elfo_mago =		new criar_personagem("Elfo Mago", "",	false, spr_elfo_mago,   80, 30, 30, 70, 01, 1)
																												 
	//bosses
	global.orc_e =			new criar_personagem("Orc ", "",	false, spr_orc,		600, 40, 100, 50, 05, 0)
	global.orc =			new criar_personagem("Orc", "",		false, spr_orc,		600, 40, 040, 50, 05, 0)
	global.golem_m =		new criar_personagem("Golem", "",	false, spr_golem,	800, 00, 020, 50, 10, 0)
	global.golem =			new criar_personagem("Golem", "",	false, spr_golem,	800, 40, 060, 80, 10, 0)
	global.espirito =		new criar_personagem("Espírito", "",false, spr_espirito,900, 30, 060, 90, 15, 0)
	global.boss_rato =		new criar_personagem("Rato Chefe", "",false, spr_boss_rato,		400, 40, 040, 100, 20, 0)
	global.arquimago =		new criar_personagem("Arquimago", "", false, spr_arquimago,		999, 50, 080, 120, 30, 0)
	global.arquimago_f =	new criar_personagem("Arquimago", "", false, spr_arquimago,		999, 01, 080, 120, 30, 0)
	global.boss_suspeito =	new criar_personagem("Suspeito", "",  false, spr_boss_suspeito,	999, 70, 040, 020, 01, 0)
	global.boss_cachorro =	new criar_personagem("Cachorro", "",  false, spr_cachorro,		500, 40, 040, 090, 01, 0)
	
}

function criar_personagem(_nome, _desc, _bom, _sprite, _hp, _atk, _def, _spd, _lvl, _fugir) constructor{

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
fugir = _fugir

if bom{xp = 0}
else{xp = floor(hp * (3 + lvl/10))}

}

