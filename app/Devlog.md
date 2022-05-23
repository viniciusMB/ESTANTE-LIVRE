# Devlog 23/05/2022

# Front-End

## Edson Gonzalez

## Victor Peixoto

### Book Request Success/Fail

Ambos os Widgets foram razoavelmente simples de se realizar, o maior desafio sendo como fazê-los encaixar bem na tela, no início, foi feito utilizando Padding, porém, conhecendo melhor convenções e Widgets, refiz esse trecho utilizando SizedBox.

O botão, independente de sucesso ou falha, remove o Widget da tela pela função dada no atributo onPressed.

O símbolo, frase e botão foram dispostos utilizando uma Column básica, o botão foi posicionado no local correto utilizando o Align Center-Right, visto a quantidade de espaço que o foi fornecido pelo Widget pai, não sobrou muito.

Notando que o Widget pai de todos vai fornecer a quantidade de espaço que o filho pede enquanto ele puder, ocorrendo como uma "negociação" entre Widgets.


### Book Confirmation

Esse Widget foi bem interessante, ele trouxe mais complexidade quanto a posicionamento de itens na tela e foi aquele onde eu mais aprendi convenções enquanto fazia, foi sobretudo interessante fazer com que o botão de Cancelar fechasse o Widget, da mesma forma que o botão em Book Request faz, e que o botão de Solicitar Doação acionasse o Book Request, por ora, sendo apenas uma ação randômica de 50/50 entre sucesso e falha, posteriormente sendo trocado por, de fato, uma request para o Back-End, claro.

No local dos botões, já não foi possível usar o Align para colocá-los no local certo, visto que, aqui, tive que utilzar uma Row para que os botões de Cancelar e Solicitar Doação ficassem no mesmo nível, então foi uma Column e uma Row dentro dele.

Também trabalhar com o espaço de texto que o usuário pode inserir foi bem interessante, ele possui diversos atributos os quais esperam respostas de diferentes métodos que retornam textos, cores, fontes, posicionamento, estilização em geral.

Notar, sobretudo, como os Constraints funcionam foi muito interessante, constantemente pensar nos atributos de height/width de cada um dos Widgets colocados, como eles interagem e a negociação desses atributos que é realizada foi muito enriquecedor.


### Book Details

Esse Widget foi de longe o mais complexo, visto que ele envolve Fazermos uma Row, que contém a imagem e uma Column, que contém as informações do livro e uma row contendo dois botões, um levando de volta a tela anterior e, outro, levando para o Widget de Book Confirmation.

Em geral, ele englobou muitas das mesmas dificuldades envolvendo os 2 primeiros Widgets, mas conter uma imagem foi um desafio bem interessante, visto que a forma que a imagem é tratada é bem... peculiar, sobretudo como ela reage quando o Widget pai começa a restringir seu tamanho.

## Maria Luisa

## Mateus Romano

Por ora, estou trabalhando em desenvolver a interface da tela de login. Devo adimitir, não tive experiências prévias com o Flutter / Dart, apesar de ter trabalhado com o front-end previamente utilizando frameworks em Javascript. O Flutter tem um certo diferencial em relação a estas, que é não usar a DOM para montar os elementos no HTML, em vez disso, utiliza-se de yum canva e monta toda sua interface ali. Isso implica em não ser possível inspecionar a aplicação com as ferramentas do navegador, sendo necessário usar o modo de debug da IDE, o VSCode. Entratanto, infelizmente, ainda não consegui configurar o debugger corretamente, o quw atrapalhou um pouco.

Ao estilizar os inputs, textosm, e botões da tela de login, percebi que até mesmo a propridade decoration ou style (a depender de qual seja o widget, já que decoration geralmente é destinada a estilização de fundo, enquanto style é mais voltada para estilizar o formato de textos e botões, por exemplo) dos Widgets recebe como valor, um objjeto a partir de um constructor que recebe parâmetros específicos para estilizar o Widget em questão. Ou seja, é bem orientada a objetos a linguagem. Só achei a nomenclatura de alguns parâmetros as serem passandos um pouco.. diferente, como no caso em que tive que usar o BorderSide para definir a cor da borda dos inputs. De 
qualquer maneira, a documentação oficial é boa e me ajudou um bom tanto.

É interessante observar que no Flutter, não apenas cada um dos elementos visíveis da interface, como Containers e caixas de Input (são objetos chamados de "Widgets") podem e provavelmente irão encapsular outros Widgets; ferramentas de espaçamento, como por exemplo, Align, Center, e Padding, também irão (inclusive, também são Widgets), o que é um conceito bem diferente do que eu tinha costume, pois em html, espaçamento conta como estilização, ou seja, competem ao css, e não ao html. Mas no Dart / Flutter, até mesmo o 
espaçamento é definido por um objeto próprio....


## Jeniffer Silva

# Back-End

## Vinicius Martins