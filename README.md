# Desafio DevVoxus
Neste repositório há a pasta Dashboard que contém todos os arquivos do programa, mais um arquivo sql com um pequeno banco de dados teste. Foi utilizado o framework Bootstrap (arquivos necessários já inclusos na pasta).
* O programa foi testado em localhost *
--------------------------------------------------------------------------------------------------------------------------------
# Lista de itens concluídos

Dentro do período estipulado consegui realizar as seguintes tarefas:
-Criar sistema de login com a api do Google
-Criar página de navegação
-Da aplicação CRUD foram feitas a criação de task, a deleção de task e a leitura de task
-Tasks possuem título, descrição e prioridade de 1 a 5

Da proposta o que não foi possível concluir a tempo:
-Criar página de edição de task
-Acrescentar anexos a task (comecei a fazer mas tive problemas e não consegui implementar a tempo)
-Nome do usuário que criou task (também tive problemas e não consegui implementar a tempo)
-Sistema "done"


Cada página foi desenvolvida separadamente e será detalhado o processo a seguir:
--------------------------------------------------------------------------------------------------------------------------------

# Página index.html
Tempo utilizado: aproximadamente 1h
Nota: Como nunca havia feito uma autenticação via google precisei pesquisar como fazê-lo, levando o processo todo de desenvolvimento da página a se prolongar. Agora já conhecendo como é demoraria no máximo 15min.
Procedimentos para teste: basta acessar por uma conta google através do botão exibido.

# Página menu.html
Tempo utilizado: aproximadamente 1h e 30min
Nota: Foi somado o tempo após criar e definir todas as páginas, tendo de alterar os links do menu. O botão de desconexão, segundo pesquisei, não funciona em localhost, mesmo utilizando o código oferecido pela própria google em sua documentação.
Procedimentos para teste: a navegação para as páginas é feita ao clicar nos links disponíveis. Há a opção de desconectar da conta google através de um botão destacado.

# Página visualizar.php
Tempo utilizado: aproximadamente 3h
Nota: A importação de dados e a exibição deles é feita na mesma página. Esta página exibe as tasks em um quadro simplificado.
Procedimentos para teste: a página gera automaticamente uma lista com as linhas contidas no banco de dados. Há um botão para retornar ao menu.

# Página cria_task.html/inclui_task.php
Tempo utilizado: aproximadamente 4h
Nota: A página de exibição e a de inclusão no banco de dados das tasks foi feita separadamente. O tempo leva em consideração os testes feitos na página para certificar a conexão com o banco de dados.
Procedimentos para teste: há um formulário a ser preenchido para que se crie a task. O nome é obrigatório e único (primary key),
a descrição é qualquer e a prioridade é definida por um number que varia de 1 a 5. Basta clicar no botão indicado para enviar ao banco. No php é feita a verificação de unicidade do nome, se está vazio e se houve ou não algum problema para gravar os dados (se houver uma janela aparecerá na tela com uma mensagem de aviso e redirecionará o usuário).

# Página remove_task.html/deleta_task.php
Tempo utilizado: aproximadamente 1h
Nota: A página de exibição e a de inclusão no banco de dados das tasks foi feita separadamente, como na anterior.
Procedimentos para teste: A página irá pedir que coloque o nome da task a ser deletada, assim ela deletará a linha do banco de dados correspondente. Basta digitar o nome da task e, se houver correspondente no banco, ela deletará e exibirá uma janela informando que foi deletado com sucesso.

# Banco de dados
Tempo utilizado: aproximadamente 30min
Nota: Criação do banco de dados para gravar as tasks. O teste é feito realizando a criação, deleção e exibição nas páginas da aplicação. O tempo leva em consideração modificações feitas ao longo do desenvolvimento das páginas.

# Style.CSS
Tempo utilizado: aproximadamente 1h e 30min
Nota: Folha de estilos.
