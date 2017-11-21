# Desafio DevVoxus - Dashboard de tasks
Neste repositório há a pasta Dashboard que contém todos os arquivos do programa, mais um arquivo sql com um pequeno banco de dados teste. Foi utilizado o framework Bootstrap (arquivos necessários já inclusos na pasta).
* O programa foi testado em localhost 
--------------------------------------------------------------------------------------------------------------------------------
# Lista de itens concluídos (update 21/11)

Dentro do período estipulado consegui realizar as seguintes tarefas:
* Criar sistema de login com a api do Google
* Criar página de navegação
* Da aplicação CRUD foram feitas a criação de task, a deleção de task e a leitura de task
* Tasks possuem título, descrição e prioridade de 1 a 5
* Criar página de edição de task com opção de marcar DONE
* Nome do usuário que criou task e nome do usuário que marcou DONE

Da proposta o que não foi possível concluir a tempo:

* Acrescentar anexos a task 


Cada página foi desenvolvida separadamente e será detalhado o processo a seguir:

# Página index.html
- Tempo utilizado: aproximadamente 1h
- Nota: Como nunca havia feito uma autenticação via google precisei pesquisar como fazê-lo, levando o processo todo de desenvolvimento da página a se prolongar. Agora já conhecendo como é demoraria poucos minutos.
- Procedimentos para teste: basta acessar por uma conta google através do botão exibido.

# Página menu.html
- Tempo utilizado: aproximadamente 1h e 30min
- Nota: Foi somado o tempo após criar e definir todas as páginas, tendo de alterar os links do menu. O botão de desconexão, segundo pesquisei, não funciona em localhost, mesmo utilizando o código oferecido pela própria google em sua documentação.
- Procedimentos para teste: a navegação para as páginas é feita ao clicar nos links disponíveis. Há a opção de desconectar da conta google através de um botão destacado.

# Página visualizar.php (update 21/11)
- Tempo utilizado: aproximadamente 3h e 30min
- Nota: A importação de dados e a exibição deles é feita na mesma página. Esta página exibe as tasks em um quadro simplificado.
- Procedimentos para teste: a página gera automaticamente uma lista com as linhas contidas no banco de dados. Há um botão para retornar ao menu. A página mostra também tanto o usuário que criou cada task quanto o usuário que marcou DONE, caso haja.

# Página cria_task.html/inclui_task.php (update 21/11)
- Tempo utilizado: aproximadamente 4h
- Nota: A página de exibição e a de inclusão no banco de dados das tasks foi feita separadamente. O tempo leva em consideração os testes feitos na página para certificar a conexão com o banco de dados.
- Procedimentos para teste: há um formulário a ser preenchido para que se crie a task. O nome é obrigatório e único (primary key), a descrição é qualquer e a prioridade é definida por um number que varia de 1 a 5. Basta clicar no botão indicado para enviar ao banco. No php é feita a verificação de unicidade do nome, se está vazio e se houve ou não algum problema para gravar os dados (se houver uma janela aparecerá na tela com uma mensagem de aviso e redirecionará o usuário). O usuário que criou atask é reconhecido pelo Javascript da página automaticamente e é gravado no banco de dados. Pode ser visualizado na página de visualização das tasks.

# Página remove_task.html/deleta_task.php
- Tempo utilizado: aproximadamente 1h
- Nota: A página de exibição e a de inclusão no banco de dados das tasks foi feita separadamente, como na anterior.
- Procedimentos para teste: A página irá pedir que coloque o nome da task a ser deletada, assim ela deletará a linha do banco de dados correspondente. Basta digitar o nome da task e, se houver correspondente no banco, ela deletará e exibirá uma janela informando que foi deletado com sucesso.

# Página edita_task.html/editar_task.php/done.php (21/11)
- Tempo utilizado: aproximadamente 4h
- Nota: Demorei neste mais pelas tentativas de utilizar o usuário do google, que como dito anteriormente foi minha primeira vez usando esse sistema, e também por conta de testes feitos para os formulários, acabando por optar criar o sistema de edição em 3 arquivos.
- Procedimentos para teste: Há dois formulários mostrados na página de edição, o primeiro é para editar informações do formulário como descrição e prioridade, sendo feita a verificação por parte do nome da task (se o campo estiver nulo ou o nome não corresponder a uma task existente retorna janela de erro). O segundo formulário indica o local para digitar o nome da task a ser marcada como DONE. O reconhecimento do usuário que fez a marcação é dada pelo Javascript embutido na página, e pode ser visto na página de visualização.

# Banco de dados (update 21/11)
- Tempo utilizado: aproximadamente 1h
- Nota: Criação do banco de dados para gravar as tasks. O teste é feito realizando a criação, deleção e exibição nas páginas da aplicação. O tempo leva em consideração modificações feitas ao longo do desenvolvimento das páginas.

# Style.CSS (update 21/11)
- Tempo utilizado: aproximadamente 2h
- Nota: Folha de estilos.

# Tempo extra utilizado para testes em geral: 5h
- Nota: Testes envolvendo erros de código, navegação, arquivos, conexão, correspondência dos dados carregados no banco de dados, testes de validação, entre outros.
