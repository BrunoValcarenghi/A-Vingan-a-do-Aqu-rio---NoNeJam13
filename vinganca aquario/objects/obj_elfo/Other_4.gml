inimigos = [
	variable_clone(global.elfo),
]

if irandom(5) = 0 array_push(inimigos, variable_clone(global.elfo))
if irandom(5) = 0 array_push(inimigos, variable_clone(global.elfo_guarda))
else array_push(inimigos, variable_clone(global.elfo))