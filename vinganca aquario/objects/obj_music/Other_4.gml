if room != Room_battle global.music_battle = msc_battle

var _proxima_musica = -1;

switch (room) {
	
	case Room_main:
        _proxima_musica = msc_forest;
        break;
	
    case Room1:
        _proxima_musica = msc_forest;
        break;
        
    case Room2:
        _proxima_musica = msc_castle;
        break;
        
    case Room_battle:
        _proxima_musica = global.music_battle
        break;
}

if (_proxima_musica != -1 && _proxima_musica != musica_atual) {
    
    if (audio_is_playing(instancia_musica_atual)) {
        audio_sound_gain(instancia_musica_atual, 0, tempo_fade);
    }
    
    musica_atual = _proxima_musica;
    instancia_musica_atual = audio_play_sound(musica_atual, 1, true, global.volume/2);
    audio_sound_gain(instancia_musica_atual, 0, 0);

    audio_sound_gain(instancia_musica_atual, global.volume/2, tempo_fade);
}