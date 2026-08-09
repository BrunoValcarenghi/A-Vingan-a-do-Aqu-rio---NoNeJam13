# NONE JAM 13 - A VINGANÇA DO AQUÁRIO

# 1 - INTRODUÇÃO DO JOGO:
Tema da jam: Efeito Borboleta / Causa e Consequência 
Gênero: JRPG por turnos com narrativa ramificada 
Engine: GameMaker Studio 2 
Equipe: Valcarenghi (Programador, Arte, Narrativa) · Samuel (Programador Auxiliar) 
Plataforma: PC (Windows) 
Duração estimada de uma partida: 15–25 minutos 

# 2 - PITCH:
  Um paladino de intelecto duvidoso invade um castelo élfico para resgatar seu peixe de estimação, cada bobagem que ele fizer no caminho pode gerar grandes consequências.
Diferencial: as escolhas nunca anunciam o que vão causar. A consequência aparece depois, num boss diferente, num lugar diferente. O jogo só revela a corrente inteira no epílogo, fazendo com que o jogador queira recomeçar para testar as escolhas e possibilidades.

# 3 - HISTÓRIA:
Juquinha, um Paladino cuja armadura de ouro reluz mais que seu intelecto, vive sua vida simples em sua simples cabana na floresta junto de seu peixe de estimação e grande amigo Dorme-Sujo. 
Certo dia, uma expedição do Sindicato dos Magos Elfos invade a casa de Juquinha e rapta Dorme-Sujo, pois o Arquimago precisa do peixe como ingrediente final da lendária Sopa da Imortalidade. Juquinha acorda com o barulho e vê seu amigo sendo levado por um elfo.
Então Juquinha pega sua Espada Claymore gigante e declara guerra contra os elfos.

Arco Narrativo:
Ato 1 - Floresta  
Ato 2 - Castelo  
Ato 3 - Sala do Arquimago  
Epílogo - Cutscene Final  


# 4 - PERSONAGENS:
## Membros da Equipe:

|          | HP  | ATK | DEF | SPD | Party?  |
| :------- | :-: | :-: | :-: | :-: | :------ |
| Juquinha | 80  | 40  | 30  | 20  | Inicial |
| Cachorro | 130 | 69  | 53  | 56  | Ato 1   |
| Mago     | 250 | 85  | 43  | 70  | Ato 2   |


Nota de Design: Os 2 aliados opcionais são drasticamente mais fortes que o protagonista. Isso é intencional, devido ao alto nível do Juquinha quando os encontra.

## Inimigos:

|             | HP  | ATK | DEF | SPD | Onde?     |
| :---------- | :-: | :-: | :-: | :-: | :-------- |
| Rato        | 40  | 10  |  5  | 15  | Floresta  |
| Rato Grande | 60  | 12  | 15  | 10  | Floresta  |
| Goblin      | 50  | 15  | 10  | 25  | Floresta  |
| Ladrão      | 90  | 20  | 30  | 30  | Emboscada |
| Elfo        | 70  | 15  | 20  | 50  | Castelo   |
| Elfo Guarda | 100 | 20  | 40  | 45  | Castelo   |
| Elfo Mago   | 80  | 30  | 30  | 70  | Castelo   |


## Boss:

|            | HP  | ATK  | DEF    | SPD   | Obrigatório |
| :--------- | :-: | :-:  | :-:    | :-:   | :---------- |
| Orc        | 600 | 40   | 100>40 | 50    | Sim         |
| Golem      | 800 | 40>0 | 60>20  | 80>50 | Sim         |
| Arquimago  | 999 | 50>1 | 80     | 120   | Sim         |
| Espírito   | 900 | 30   | 60     | 90    | Não         |
| Rato Chefe | 400 | 40   | 40     | 100   | Não         |
| Suspeito   | 999 | 70   | 40     | 20    | Não         |
| Cachorro   | 500 | 40   | 40     | 90    | Não         |


Nota: As setas indicam a alteração quando o jogador ativou a escolha correspondente.  
Referências visuais  
Juquinha — Solaire (Dark Souls)  
Cachorro — cão de Resident Evil 4, especialmente na versão "humanoide"  
Mago — Black Mage (Final Fantasy)  
Mendigo — Greirat (Dark Souls 3)  
Floresta — rotas de Pokémon  
Castelo — Edimburgo  

# 5 - SISTEMA DE EFEITO BORBOLETA:
O núcleo do jogo. Dez decisões são registradas em flags globais que sobrevivem até o epílogo. 

## Ato 1
**Pedido de esmola:** O jogador encontrará um NPC pedindo esmola, caso o jogador negue ajuda ele virá como um boss final. Caso jogador ajude, ele dará um kit médico ao jogador antes da boss final.  
**Cachorro na corda:** Caso o jogador ajude, o cão entra na equipe. Caso o jogador não interaja com o cachorro ele se torna aliado do npc anterior.  
**Ative o regador:** Na entrada do castelo antes do boss, há uma alavanca e uma placa que diz: Não ative a alavanca. caso o jogador ative, liga um sistema de irrigação que molha o chão. se o chão estiver molhado o boss escorrega perde o escudo.  
**A Vela do Altar Abandonado:** Existe uma vela acesa em um altar em ruínas. Se o jogador apagá-la, liberta um espírito maligno que invade o castelo como um mini-chefe. caso o jogador tenha destruído a colmeia é boss fight, se não ele perde metade do hp.  
**Abelhas:** Se o jogador acertar a colmeia, as abelhas atacam a emboscada de ladrões, limpando o caminho até o castelo.  
## Ato 2
**Mago Sonegador:** Há um mago preso em uma cela, caso o jogador o resgate ele se torna membro da equipe e coloca medo no boss golem.  
**Rei Rato:** se o jogador matar ratos e ligar o irrigador o chefe dos ratos aparece no castelo boss fight.  
**Sabão na fonte:** Existe uma fonte sagrada no corredor das masmorras, que o jogador pode recuperar sua vida, caso o jogador decida jogar sabão na fonte, enche os tubos do castelo de espuma e os guardas elfos e o arquimago começa as batalhas com metade da vida.  
**O Banquete dos Guardas:** Você pode roubar o pernil assado da cozinha dos elfos assim os guardas elfos ficam com fome e se recusam a ajudar o vilão.  
**o Feitiço:** antes da sala do chefe final, o jogador pode trocar os livros do Grimório do Chefe de lugar na estante. Se o fizer, quando o chefe tentar invocar seu grande feitiço de fogo durante a batalha final, ele acidentalmente invoca uma chuva de flores.   

## Cruzamentos entre escolhas:
Estas são as combinações onde duas decisões independentes se encontram: O coração do tema: 
> Vela apagada + ratos mortos = O Espírito vira uma boss fight completa  
> Vela apagada + ratos poupados = O Espírito aparece enfraquecido  
> Alavanca ativa + ratos mortos = O Rato Chefe emerge no castelo  
> Esmola negada + cachorro ignorado = O confronto secreto tem 2 inimigos  
> Esmola negada + cachorro solto = O confronto tem apenas o mendigo  

## Feedback ao jogador:
Sem isso o jogador interpreta as consequências como aleatoriedade, o tema da jam se perde.  
> Borboletas aparecem em 2 momentos: quando a escolha é feita e quando ela cobra o preço.  
>Aviso de abertura de batalha: Ao iniciar um combate afetado por uma escolha, o jogo exibe uma linha explicando o efeito por alguns segundos.  
>Epílogo: a tela final lista todas as 10 escolhas e o que cada uma provocou.  

# 6 - MECÂNICAS:
Exploração Top-down:  
Movimento livre em 8 direções. Inimigos são visíveis no mapa. O encontro dispara a batalha.  
Combate por turnos(JRPG):  
>Ordem de ação determinada por SPD  
>Ações: Atacar, Item, Fugir(indisponível contra chefes)  
>Fórmula de dano: ATK^2/(ATK+DEF), com mínimo de 1  
>Quando resta um único inimigo vivo, o ataque dispensa seleção de alvo  
>Aliados derrotados permanecem na tela em transparências e podem ser revividos com itens.  

## Progressão:
XP calculado como HP*(3+LVL/10) do inimigo derrotado. Não tem sistema de loja, os recursos vêm dos ganhos após a derrota de monstros.  

## Itens:
Poções de cura e kit médico, além de itens que causam dano como bomba e veneno.  

# 6 - ESTRUTURA TÉCNICA:

Rooms:  
room_main = Menu principal  
room_cutscene_inicio = Abertura narrativa  
room1 = Floresta(Ato 1)  
room2 = Castelo(Ato 2)  
room_battle = Combate por turnos  
room_pause = Menu de equipe, itens e configurações  
room_cutscene_final = Epílogo  

## Convenções de código:  
hp = vida máxima  
vida = vida atual  
personagens são structs criados por criar_personagem() em scr_personagens  
todas as flags são inicializadas em scr_game_start e resetadas a cada nova partida  
camada “Instances” existe em todas as rooms para spawn dinâmico  

## Persistência: 
Configurações(idioma,tela cheia) salvas em save.sav via ini_*. O progresso da partida não é salvo. O jogo é feito para ser terminado numa sessão e rejogado.  

# 7 - ARTE E ÁUDIO:
Estilo: Pixel art 16-bit, perspectiva top down na exploração e combate.  
Paleta: Tons terrosos e bege na UI, contraste alto nos inimigos.  

## Assets:
https://vlcrngh.itch.io/top-down-template-gms2   
https://crusenho.itch.io/complete-ui-book-styles-pack  
https://zedpxl.itch.io/pixelart-forest-asset-pack   
https://heltonyan.itch.io/pixelcombat   
https://hydrogene.itch.io/high-quality-16-bit-music  


# 8 - ESCOPO:
Implementado:  
>Sistema de combate por turnos completo  
>10 Escolhas com consequências mecânicas reais  
>7 Boss, 3 opcionais  
>2 desfechos narrativos  
>Menu de pausa com equipe, itens e configurações  

# 9 - RISCOS DE DESIGN CONHECIDOS:  
>Acúmulo de vantagens. Quase toda escolha "correta" enfraquece um inimigo. Um jogador que acerte todas chega ao Arquimago com vantagem excessiva. A escolha do sabão é o modelo a seguir — ela cobra um preço real (a cura) em troca do benefício.  
>Consequências invisíveis. Alterações de estatística não são percebidas sem sinalização explícita. Daí a importância do sistema de aviso e das borboletas.  
>Causas com carga moral óbvia. "Ajudar o mendigo" já sinaliza ao jogador que é a opção virtuosa, o que aproxima o jogo de um medidor de karma. Efeito borboleta é mais forte quando a causa parece trivial.  
>Rejogabilidade depende do epílogo. Sem a tela final listando as escolhas, o jogador termina sem saber que existiam outros caminhos — e não recomeça.  

