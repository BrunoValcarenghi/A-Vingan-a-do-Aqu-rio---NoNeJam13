image_xscale = 0
image_yscale = 1.2
play_audio_random(sfx_dialogo)

if global.flag_esmola i = 0
else i = 1

alarm[0] = 900

f = [

	"   Juquinha derrota o terrível Arquimago e resgata seu inseparável \n" +
	" amigo Dorme-Sujo. \n",
	
	"   A verdade é revelado, o verdadeiro mal por trás disso tudo era \n" +
	"Aquele homem suspeito. Apesar de Juquinha tomar algumas atitudes \n" +
	"erradas, ele ainda consegue salvar seu amigo Dorme-Sujo." ,

]

t = true

layer_background_index(layer_background_get_id("Background"), i);