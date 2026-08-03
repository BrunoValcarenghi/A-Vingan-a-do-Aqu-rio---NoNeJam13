text = "Sair";

if saida != -1 and layer_sequence_is_finished(saida) {

	layer_sequence_destroy(saida);
	game_end()
}
