global.shake_amount = 0;

function shake(_forca){
    if (_forca > global.shake_amount) {
        global.shake_amount = _forca;
    }
}