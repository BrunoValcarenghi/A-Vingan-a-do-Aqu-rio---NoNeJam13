if !global.flag_mago{
	falas = [

		{quem: "Golem", falou: " Eu sou o poderoso golem!"},
		{quem: "Golem", falou: " Não deixo ninguém entrar na sala do arquimago!"},
		
	]
}
else{

	falas = [

		{quem: "Golem", falou: " Oh não!"},
		{quem: "Golem", falou: " Um mago!"},
		
	]

}

if global.flag_mago{ inimigos = [variable_clone(global.golem_m)] }
else{inimigos = [variable_clone(global.golem)]}
