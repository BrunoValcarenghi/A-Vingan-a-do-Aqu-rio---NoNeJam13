switch(estado){

    case "entrando":
        alpha += 0.08
        if alpha >= 1{ alpha = 1 estado = "mostrando" }
        break

    case "mostrando":
        tempo--
        if tempo <= 0 estado = "indo"
        break

    case "indo":
        room_goto_next()
        estado = "saindo"
        break

    case "saindo":
        alpha -= 0.05
        if alpha <= 0 instance_destroy()
        break
}