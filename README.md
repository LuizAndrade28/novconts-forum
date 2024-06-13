# NovcontsForum

Um espaço online dedicado a engenheiros, arquitetos, operários e entusiastas da construção, onde podem compartilhar conhecimentos, discutir projetos e solucionar dúvidas. Este fórum atua como uma plataforma para conectar profissionais do setor, facilitando a troca de informações técnicas e experiências práticas.

## Como Configurar e Rodar o Projeto Localmente

> [!IMPORTANT]
> ### Instruções de Instalação
> Este projeto usa Ruby, Rails, PostgreSQL, Devise e Git. Para configurar seu ambiente de desenvolvimento, siga estes passos:

### Pré-requisitos:

Ruby (>= 3.1.2): Baixe e instale Ruby do site oficial https://www.ruby-lang.org/en/documentation/installation/. Certifique-se de seguir as instruções para adicionar Ruby ao seu caminho do sistema.

Rails (>= 7.0.4): Instale a gem do Rails usando o comando gem: gem install rails

PostgreSQL: Instale o PostgreSQL do gerenciador de pacotes do seu sistema ou baixe o instalador oficial em https://www.postgresql.org/docs/.

Git: Instale o Git do site oficial https://www.git-scm.com/downloads.

### Configuração

### 1. Clonar o Repositório e ir para o diretório

Primeiro, clone o repositório do projeto para o seu ambiente local e logo após mude para o diretório criado.

```sh
git clone git@github.com:LuizAndrade28/novconts-forum.git
cd novconts-forum
```

### 2. Crie o banco de dados

Após ter ido para a pasta do projeto, crie seu banco de dados.

```sh
rails db:create
```

### 3. Instale as dependências

> [!NOTE]
> Para instalar as gems, você precisa ter o bundler instalado. Caso não tenha, você pode instalá-lo com o seguinte comando:

```sh
gem install bundler
```

Agora você precisa instalar todas as gemas necessárias contidas no `GEMFILE`.

```sh
bundle install
```

### 4. Migre o banco de dados

```sh
rails db:migrate
```

> [!TIP]
> Caso deseje preencher o projeto com dados fictícios, rode o seguinte comando:

```sh
rails db:seed
```

### 5. Inicie o servidor
Finalmente, após seguir cada passo, você poderá rodar o projeto com o comando abaixo:

```sh
rails s
```


## Fluxo dos usuários na aplicação

**Resumo das ações:**

> Ações do usuário (deslogado):
Visualizar todos os posts, visualizar um único post e seus comentários, bem como, criar uma nova conta.

> Ações do usuário (logado):
Depois de logado, o usuário pode realizar várias ações dentro do sistema, como: criar postagem, editar postagens próprias, excluir postagens próprias, comentar em postagem, editar sua conta e excluir sua conta.

> Ações do Administrador (Logado):
Se o usuário tiver privilégios administrativos, poderá realizar ações adicionais, como: excluir qualquer postagem e comentário.

**Detalhamento das ações em cada página:**

> Página Inicial (Home Screen)

1. Criar conta – O usuário clica no botão “Entrar” para iniciar o processo de cadastro, em seguida clica em “Cadastrar”, fornece suas informações (nome de usuário, email e senha) e clica no botão "Confirmar cadastro" para enviar o formulário. 
Após isso o sistema valida as informações fornecidas para criação da conta e se as informações forem válidas a conta é criada com sucesso. O usuário é redirecionado para o local inicial, com status de logado e aparece o seu nome e suas possíveis ações na barra de navegação. Se as informações forem inválidas: Uma mensagem de erro é exibida indicando as informações inválidas. O usuário permanece na tela "Criar Conta" para corrigir os erros e tentar novamente.
2. Entrar em conta já registrada – O usuário clica no botão “Entrar” para iniciar o processo de login. O usuário insere suas credenciais de login (nome de usuário e senha) e clica no botão "Entrar".
O sistema valida as credenciais fornecidas em seu banco de dados de usuários. Se as credenciais forem válidas: o status da sessão é atualizado para "Logado", sendo redirecionado novamente para o local inicial e aparece o seu nome e suas possíveis ações na barra de navegação. Caso as credenciai forem incorretas: uma mensagem de erro é exibida indicando credenciais inválidas. O usuário permanece na tela "Entrar na Conta".
4. Barra de navegação – Nela é contida o nome do site, bem como o seu logo, o nome e avatar do usuário. Ao clicar no avatar do usuário, suas opções são mostradas por um drop-down (Meus posts, editar perfil, sair).
3. Visualizar todos os posts – Todos usuários logados ou não, podem visualizar os posts contidos na Home. Em cada post está contido o título, autor, avatar do autor, data de criação, conteúdo e contagem de comentários.
4. Filtrar posts - Todos usuários logados ou não, podem filtrar os posts em ordem alfabética ou por data de criação.
5. Procurar post – Todos usuários logados ou não, podem procurar um post pelo seu nome, pelo nome do autor ou até mesmo pelo e-mail do autor.
6. Clicar em um post para visualizá-lo - Todos usuários logados ou não, podem clicar em um post para visualizá-lo.
7. Criar post - Todos usuários logados ou não, podem clicar no ícone de criação de post. Se logado, será enviado para página de criação e preenchimento do formulário. Caso não esteja logado, será enviado para criar uma conta. 

> Página do Post (Show)

1. Visualizar post - Todos usuários logados ou não, podem visualizar o post. Em cada post está contido o título, autor, avatar do autor, data de criação, conteúdo e comentários.
2. Editar ou deletar post – Somente o autor do post poderá performar essa ação. Se for admin, ele poderá deletar o post.
3. Mudar de post - Todos usuários logados ou não, podem clicar para ir para o post anterior (se existir) e para o próximo post (se existir).
4. Visualizar comentários - Todos usuários logados ou não, podem visualizar os comentários. Em cada comentário está contido o autor, avatar do autor, data de criação e conteúdo. 
5. Adicionar comentários – Todos usuários logados podem comentar no post.
6. Deletar comentário – Se tratar-se de um admin, caso julgue necessário, poderá deletar algum comentário. 
7. Barra de navegação (mesmas ações em todas as páginas).

> Página dos Meus posts (Index)

1. Visualizar posts e contagem deles – Contém todos os posts do usuário em questão. Em cada post está contido o título, data de criação, conteúdo e ícones com link de edição e exclusão.
2. Filtrar posts – Filtrar os posts em ordem alfabética ou por data de criação.
3. Criar post - Clicar no ícone de criação de post para preencher as informações do formulário.
4. Voltar – Voltar para a página anterior.
5. Barra de navegação (mesmas ações em todas as páginas)

***Segue diagrama abaixo para ilustrar as ações do usuário***
![Forum app](https://github.com/LuizAndrade28/novconts-forum/assets/47321025/616796cf-bab1-4c43-a779-a43e68b5feae)


## Observações gerais

1. Gemas:
   
   Além das gemas default que vem no processo de criação de um novo projeto rails, houve a necessidade de inserção de novas gemas.
   
   > Bootstrap - Utilizado para customização do layout e componentes, bem como, responsividade do aplicativo.
   
   > Devise - Utilizado para lidar com o sistema dos usuários e sua autenticação no aplicativo.
   
   > Devise=i18n - Usado na aplicação para tradução da biblioteca original do Devise para o pt-BR. Importante para o usuário final.
   
   > Rails-i18n - Usado na aplicação para tradução da biblioteca original do Rails para o pt-BR. Importante para o usuário final.
   
   > Simple_form - Criação de formulários.
   
   > Ransack - Buscas avançadas na plataforma. Essa gema propiciou em poucas etapas, a possibilidade do usuário procurar por títulos de posts, nome dos usuários ou e-mail dos usuários, em poucos cliques.
   
   > Kaminari - Customização das páginas 'home' e 'meus_posts', para limitar a quantidade de posts em cada e criar um sistema de paginação dentro das mesmas.
   
   > Pundit - Usado na autorização dos usuários. Para garantir que nenhum usuário acesse, edite ou delete dados que não sejam seus.
   
2. Layout:
   
   > Responsividade - A responsividade do layout foi alcançada através do Bootstrap e CSS.
   
   > Interatividade - O aplicativo mesclou um layout clean e responsivo, com algumas interatividades para melhor funcionamento, como filtros, sistema de busca, múltiplos locais para interação e manipulação dos posts.
   
   > Segurança - Importante ressaltar que os usuários só podem ter ser posts manipulados por eles mesmos e por administradores (caso seja necessário). 
   
