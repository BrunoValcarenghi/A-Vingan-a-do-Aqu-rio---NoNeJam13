function scr_get_input(){

// movement keys
// teclas de movimiento
// teclas de movimentação
key_up = keyboard_check(ord("W"))
key_left = keyboard_check(ord("A"))
key_down =  keyboard_check(ord("S"))
key_right = keyboard_check(ord("D"))

key_sprint = keyboard_check(vk_control)

key_interactive = keyboard_check_pressed(ord("E"))

}