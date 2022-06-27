# Devlog 23/05/2022

# Front-End

## Edson Gonzalez

### Arquitetura e suporte

Como sou a pessoa com mais conhecimento com flutter na equipe, fiquei encarregado de preparar a microarquitetura do projeto e ajudar a equipe com suas dúvidas.

### Definição das regras de análise estática de código

A escolha das regras pro dart-code-metrics (veja o arquivo analysis_options.yaml), foi feita tentando atingir um equilíbrio entre boa qualidade de código, e eficiência no tempo de desenvolvimento, o que foi difícil, visto que quase todos os membros tiveram o primeiro contato com Flutter durante este projeto. Desde então, notei que o resultado da escolha foi positivo, pois os membros conseguiram aprender com as regras, visto que o próprio editor de texto constantemente sugere melhorias de padrão de código e explica a documentação do flutter na prática.

### Deploy da aplicação

Durante a última semana, tirei um momento pra ver sobre como realizar o deploy da aplicação web pelo firebase, pois até então só realizei deploy de flutter na loja da Google Play. Entendi boa parte do procedimento, mas ainda não tive muito progresso tangível.

### Autenticação

Expliquei extensivamente o processo de geração do token na entrega anterior então vou evitar comentar muito sobre, mas preparei o processo de autenticação criando um padrão de singleton.

### Tela de Catálogo

Uma tela atribuída pra mim, foi onde eu tive menos progresso devido a minhas outras atribuições, mas está indo normalmente.

## Victor Peixoto

### Book Request

Ambos os Widgets foram razoavelmente simples de se realizar, o maior desafio sendo como fazê-los encaixar bem na tela, no início, foi feito utilizando Padding, porém, conhecendo melhor convenções e Widgets, refiz esse trecho utilizando SizedBox.

O botão, independente de sucesso ou falha, remove o Widget da tela pela função dada no atributo onPressed.

O símbolo, frase e botão foram dispostos utilizando uma Column básica, o botão foi posicionado no local correto utilizando o Align Center-Right, visto a quantidade de espaço que o foi fornecido pelo Widget pai, não sobrou muito.

Notando que o Widget pai de todos vai fornecer a quantidade de espaço que o filho pede enquanto ele puder, ocorrendo como uma "negociação" entre Widgets.

Utilizando do StatefulWidget, criei um widget geral que, quando chamado, deve ser especificada a propriedade de "success", um valor bool que irá fazer o widget retornar o já conhecido de sucesso ou de falha da requisição.

### Book Confirmation

Esse Widget foi bem interessante, ele trouxe mais complexidade quanto a posicionamento de itens na tela e foi aquele onde eu mais aprendi convenções enquanto fazia, foi sobretudo interessante fazer com que o botão de Cancelar fechasse o Widget, da mesma forma que o botão em Book Request faz, e que o botão de Solicitar Doação acionasse o Book Request, por ora, sendo apenas uma ação randômica de 50/50 entre sucesso e falha, posteriormente sendo trocado por, de fato, uma request para o Back-End, claro.

No local dos botões, já não foi possível usar o Align para colocá-los no local certo, visto que, aqui, tive que utilzar uma Row para que os botões de Cancelar e Solicitar Doação ficassem no mesmo nível, então foi uma Column e uma Row dentro dele.

Também trabalhar com o espaço de texto que o usuário pode inserir foi bem interessante, ele possui diversos atributos os quais esperam respostas de diferentes métodos que retornam textos, cores, fontes, posicionamento, estilização em geral.

Notar, sobretudo, como os Constraints funcionam foi muito interessante, constantemente pensar nos atributos de height/width de cada um dos Widgets colocados, como eles interagem e a negociação desses atributos que é realizada foi muito enriquecedor.

### Book Details

Esse Widget foi de longe o mais complexo, visto que ele envolve Fazermos uma Row, que contém a imagem e uma Column, que contém as informações do livro e uma row contendo dois botões, um levando de volta a tela anterior e, outro, levando para o Widget de Book Confirmation.

Em geral, ele englobou muitas das mesmas dificuldades envolvendo os 2 primeiros Widgets, mas conter uma imagem foi um desafio bem interessante, visto que a forma que a imagem é tratada é bem... peculiar, sobretudo como ela reage quando o Widget pai começa a restringir seu tamanho.

Parando para rever o código do BookDetails depois de aprender um pouco mais me fez perceber uso desnecessário de determinados widgets e a estabelecer um melhor uso dos widgets que já existiam. Isso é, existiam vários atributos que eu precisava mudar, porém, widgets já existentes já traziam essas mudanças de propriedades através de certos atributos o que fez o código ficar bem mais limpo, porém, otimizações ainda estão sendo buscadas tanto para essa tela e então para as demais.
Note que isso tudo é feito enquanto ainda não aparece a possibilidade de trabalhar integrando com o back-end.

## Maria Luisa

### My Area

Nessa tela, o usuário tem acesso aos seus anúncios de livros a serem doados e pode adicionar mais um, editar os existentes ou excluí-los. No que se concerne ao layout, temos 3 blocos de conteúdo aqui. A própria tela representa um widget, o qual, nativamente, representa uma classe, que tem um construtor, e, para que sua renderização seja possível, sobrescreve o método Widget build. Assim, é possível perceber que há o conceito de orientação a objetos aqui, uma vez que todos os widgets que criamos são, de fato, do tipo widget, e sobrescrevemos um dos seus métodos a fim de personalizar o comportamento em nossa nova classe. 

Tudo que está implementado em my_area se encontra dentro de um espaço delimitado por uma column, a qual reúne o conteúdo de forma que vários outros widgets possam ser alinhados em forma de bloco, um abaixo do outro. Dentro dessa área existem os 2 blocos de conteúdos que resumem as funcionalidades da tela: uma parte mais ao topo, que traz o nome do usuário e os botões que lhes permitem adicionar um anúncio ou fazer o logout e temos a parte que lista todos os anúncios do usuário de fato. Nessa parte em específico, aproveitando o conceito dos widgets e do conceito de classe, tornei cada um dos livros aqui em um widget a parte da tela principal. Assim, o código não só torna-se mais limpo, como também torna possível de que cada exibição de anúncio seja uma instância desse widget que irá variar conforme os parâmetros passados, no caso, os dados de cada anúncio vinculado ao usuário. 

Como a comunicação com o back-end ainda não foi realizada, o widget permanece estático até o momento e a principal dificuldade até então tem sido a compreensão da dinâmica de posicionamento dos elementos dentro do widget my_area. 


## Mateus Romano

Por ora, estou trabalhando em desenvolver a interface da tela de login. Devo adimitir, não tive experiências prévias com o Flutter / Dart, apesar de ter trabalhado com o front-end previamente utilizando frameworks em Javascript. O Flutter tem um certo diferencial em relação a estas, que é não usar a DOM para montar os elementos no HTML, em vez disso, utiliza-se de yum canva e monta toda sua interface ali. Isso implica em não ser possível inspecionar a aplicação com as ferramentas do navegador, sendo necessário usar o modo de debug da IDE, o VSCode. Entratanto, infelizmente, ainda não consegui configurar o debugger corretamente, o quw atrapalhou um pouco.

Ao estilizar os inputs, textosm, e botões da tela de login, percebi que até mesmo a propridade decoration ou style (a depender de qual seja o widget, já que decoration geralmente é destinada a estilização de fundo, enquanto style é mais voltada para estilizar o formato de textos e botões, por exemplo) dos Widgets recebe como valor, um objjeto a partir de um constructor que recebe parâmetros específicos para estilizar o Widget em questão. Ou seja, é bem orientada a objetos a linguagem. Só achei a nomenclatura de alguns parâmetros as serem passandos um pouco.. diferente, como no caso em que tive que usar o BorderSide para definir a cor da borda dos inputs. De 
qualquer maneira, a documentação oficial é boa e me ajudou um bom tanto.

É interessante observar que no Flutter, não apenas cada um dos elementos visíveis da interface, como Containers e caixas de Input (são objetos chamados de "Widgets") podem e provavelmente irão encapsular outros Widgets; ferramentas de espaçamento, como por exemplo, Align, Center, e Padding, também irão (inclusive, também são Widgets), o que é um conceito bem diferente do que eu tinha costume, pois em html, espaçamento conta como estilização, ou seja, competem ao css, e não ao html. Mas no Dart / Flutter, até mesmo o 
espaçamento é definido por um objeto próprio....


## Jeniffer Silva

### Design

Fiquei responsável pela construção do design da nossa aplicação, e primeiramente gostaria de comentar que foi desafiador pois nunca tinha trabalhado com algo tão grande, são várias telas e algumas eu nunca tive contato de como fazer, como a tela de cadastro de livros, com os inputs de informação e arquivos, dropdowns e a tela de anúncio do livro a ser doado. Foi um processo de pesquisa, de bastante feedback da equipe em relação ao que queríamos trazer com o projeto, eu gostei bastante desse processo e acredito que ele vá impactar no processo de quando eu estiver codando no front-end.

### Flutter

Bem, eu não havia tido contato ainda com o flutter, então tem sido tudo bem novo, estou atualmente focando em aprender e desenvolver bem na linguagem para executar minhas telas do projeto.

# Back-End

## Vinicius Martins

Fiquei responsável por toda a construção de uma api que possibilitará a doação de livros.  Optei por utilizar o framework Nestjs pois, além de já possuir familiaridade, esse framework foi pensado para ser utilizado com conceitos de OOP, o que casou bem com a proposta do projeto.
Idealmente sempre que um usuário reservar um livro, um email será enviado para quem o publicou na plataforma. Além disso, toda parte de cadastro tanto do usuário quanto dos livros e suas fotos será feita pela api. Até então já desenvolvi quase toda a parte de autenticação e estrutura do banco de dados além de ter começado a solucionar a questão das imagens, nunca trabalhei com esse tipo de dado, para mim está sendo bem divertido entender como lidar com imagens.

# Devlog 06/06/2022

## Mateus Romano

Fiz a interface da tela de Cadasstro. Além disso, estive procurando melhorar a responsividade das telas que estou fazendo. Descobri que posso utilizar lógica condicional ao retornar o valor da propriedade de um widget. Utilizei isso para retornar diferentes proporções da altura da tela para os paddingsa e para a fonte, a depenmder do tamanho da tela em questão, similar a como funcionaria um media query no CSS. isso porque, com o dedsign original, há overflow que acaba sendo gerado ao reduzir a altura da tela para algo como 720p. 

Entretanto, obtive ainda alguns bugs de compilação ao usar o ternário para retornar valores diferentes em alguns casos, erros que parecem ter a ver com o fato de  que estava tentando atribuir um valor variável a uma propriedade de padding, mas com a keyword "const"; ou seja, apesar de ser uma boa prática usar constante em valores imutáveis, nesse caso o valor pode acabar por mudar devido à condicional.