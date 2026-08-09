if trava > 0 trava--

var _clicou = (trava <= 0) and (mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_anykey))

switch(estado){

    case "entrando":
        alpha += 0.04
        if alpha >= 1{ alpha = 1 estado = "mostrando" }
        break

    case "mostrando":
        if _clicou{
            estado = "saindo"
            play_audio_random(sfx_dialogo)
        }
        break

    case "saindo":
        alpha -= 0.06
        if alpha <= 0{
            alpha = 0
            atual++
            trava = 20
            if atual >= array_length(slides) estado = "fim"
            else estado = "entrando"
        }
        break

    case "fim":
        if alpha < 1 alpha += 0.03
        if _clicou game_restart()
        break
}