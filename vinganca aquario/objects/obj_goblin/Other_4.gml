inimigos = [
	variable_clone(global.goblin),
]

if irandom(2) = 0 array_push(inimigos, variable_clone(global.rato))
else array_push(inimigos, variable_clone(global.goblin))
if irandom(5) = 0 array_push(inimigos, variable_clone(global.goblin))