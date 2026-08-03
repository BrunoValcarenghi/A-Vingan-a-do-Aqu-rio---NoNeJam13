inimigos = [
	variable_clone(global.elfo_guarda),
]

if irandom(2) = 0 array_push(inimigos, variable_clone(global.elfo_guarda))
if irandom(5) = 0 array_push(inimigos, variable_clone(global.elfo))