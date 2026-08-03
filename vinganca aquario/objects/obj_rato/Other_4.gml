inimigos = [
	variable_clone(global.rato),
]

if irandom(2) = 0 array_push(inimigos, variable_clone(global.rato))
if irandom(5) = 0 array_push(inimigos, variable_clone(global.rato_grande))