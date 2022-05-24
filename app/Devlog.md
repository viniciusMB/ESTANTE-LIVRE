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

### My Area

Nessa tela, o usuário tem acesso aos seus anúncios de livros a serem doados e pode adicionar mais um, editar os existentes ou excluí-los. No que se concerne ao layout, temos 3 blocos de conteúdo aqui. A própria tela representa um widget, o qual, nativamente, representa uma classe, que tem um construtor, e, para que sua renderização seja possível, sobrescreve o método Widget build. Assim, é possível perceber que há o conceito de orientação a objetos aqui, uma vez que todos os widgets que criamos são, de fato, do tipo widget, e sobrescrevemos um dos seus métodos a fim de personalizar o comportamento em nossa nova classe. 

Tudo que está implementado em my_area se encontra dentro de um espaço delimitado por uma column, a qual reúne o conteúdo de forma que vários outros widgets possam ser alinhados em forma de bloco, um abaixo do outro. Dentro dessa área existem os 2 blocos de conteúdos que resumem as funcionalidades da tela: uma parte mais ao topo, que traz o nome do usuário e os botões que lhes permitem adicionar um anúncio ou fazer o logout e temos a parte que lista todos os anúncios do usuário de fato. Nessa parte em específico, aproveitando o conceito dos widgets e do conceito de classe, tornei cada um dos livros aqui em um widget a parte da tela principal. Assim, o código não só torna-se mais limpo, como também torna possível de que cada exibição de anúncio seja uma instância desse widget que irá variar conforme os parâmetros passados, no caso, os dados de cada anúncio vinculado ao usuário. 

Como a comunicação com o back-end ainda não foi realizada, o widget permanece estático até o momento e a principal dificuldade até então tem sido a compreensão da dinâmica de posicionamento dos elementos dentro do widget my_area. 


## Mateus Romano

## Jeniffer Silva

### Design

Fiquei responsável pela construção do design da nossa aplicação, e primeiramente gostaria de comentar que foi desafiador pois nunca tinha trabalhado com algo tão grande, são várias telas e algumas eu nunca tive contato de como fazer, como a tela de cadastro de livros, com os inputs de informação e arquivos, dropdowns e a tela de anúncio do livro a ser doado. Foi um processo de pesquisa, de bastante feedback da equipe em relação ao que queríamos trazer com o projeto, eu gostei bastante desse processo e acredito que ele vá impactar no processo de quando eu estiver codando no front-end.

### Flutter

Bem, eu não havia tido contato ainda com o flutter, então tem sido tudo bem novo, estou atualmente focando em aprender e desenvolver bem na linguagem para executar minhas telas do projeto.

# Back-End

## Vinicius Martins
