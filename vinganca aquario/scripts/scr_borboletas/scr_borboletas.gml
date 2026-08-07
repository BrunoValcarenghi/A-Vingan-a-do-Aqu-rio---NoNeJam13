function borboletas(_x, _y, _qtd = 10){
    if instance_exists(obj_borboleta){
        with(obj_borboleta) soltar(_x, _y, _qtd);
    }
}