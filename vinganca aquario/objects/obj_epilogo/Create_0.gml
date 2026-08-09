depth = -9999

slides = []

// --- esmola ---
if global.flag_esmola
    array_push(slides, {
        spr: spr_ep_esmola_sim,
        txt: "Você dividiu o que tinha com o mendigo.\nEle não esqueceu e voltou para retribuir."
    })
else
    array_push(slides, {
        spr: spr_ep_esmola_nao,
        txt: "Você passou direto pelo mendigo.\nAlgo naquele olhar já não era mais humano."
    })

// --- cachorro ---
if global.flag_dog
    array_push(slides, {
        spr: spr_ep_cachorro_sim,
        txt: "Você soltou o cão da corda.\nEle lutou ao seu lado até o fim."
    })
else
    array_push(slides, {
        spr: spr_ep_cachorro_nao,
        txt: "Você deixou o cão preso à árvore.\nOutra pessoa apareceu para soltá-lo."
    })

// --- alavanca ---
if global.flag_regador
    array_push(slides, {
        spr: spr_ep_alavanca_sim,
        txt: "Você puxou a alavanca proibida.\nA água correu por baixo dos pés do Orc."
    })
else
    array_push(slides, {
        spr: spr_ep_alavanca_nao,
        txt: "Você obedeceu a placa.\nO Orc te esperava firme, escudo erguido."
    })

// --- fonte ---
if global.flag_sabao
    array_push(slides, {
        spr: spr_ep_sabao,
        txt: "Você jogou sabão na fonte sagrada.\nA espuma percorreu o castelo inteiro."
    })
else
    array_push(slides, {
        spr: spr_ep_cura,
        txt: "Você bebeu da fonte sagrada.\nSuas feridas fecharam, e o castelo seguiu intacto."
    })

// --- livro (só aparece se trocou) ---
if global.flag_feitico
    array_push(slides, {
        spr: spr_ep_livro,
        txt: "Você trocou os grimórios de lugar.\nO Arquimago nunca conferiu a estante."
    })

n_escolhas = array_length(slides)

// --- imagem final ---
if global.flag_esmola
    array_push(slides, {
        spr: spr_ep_final_sim,
        txt: "Juquinha resgata Dorme-Sujo e volta para casa."
    })
else
    array_push(slides, {
        spr: spr_ep_final_nao,
        txt: "Mesmo cercado pelas próprias escolhas, Juquinha salva seu amigo."
    })

atual  = 0
alpha  = 0
estado = "entrando"
trava  = 40