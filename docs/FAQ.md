# Perguntas frequentes

### 5.1 é a versão do kernel?
Não. A edição Nextos é 5.1; o kernel desta família é Linux 5.15.223.

### Funciona em qualquer TV Box?
A compatibilidade depende do SoC, placa, memória, DTB e periféricos. Consulte a matriz; o mesmo nome comercial pode designar placas diferentes.

### Source code (zip) instala a ROM?
Não. É o arquivo automático da documentação deste repositório. Baixe a imagem `.img.gz` ou o `-update.zip` conforme a finalidade.

### ZRAM transforma uma box de 1 GB em uma de 2 GB?
Não. Ela comprime páginas de memória e usa CPU e RAM física. Ajuda a administrar pressão de memória conforme o perfil, sem criar RAM física nem garantir FPS maior.

### O nome do jogador muda a identidade da conta ou da box?
Não. É um nome de apresentação no perfil, saudação e suporte autorizado; as identidades técnicas e as autorizações são separadas.

### O suporte pode entrar em qualquer aparelho conectado à internet?
Não. O aparelho precisa estar cadastrado e autorizado nos termos do serviço. Conexão com a internet não concede acesso por si só.

### O APK reinicia qualquer Android sem autorização?
Ele solicita a reinicialização para cartão pelos mecanismos disponíveis. Privilégios ou autorização Android podem ser necessários; o aplicativo não promete contornar restrições de fábrica.

### Por que há dois arquivos grandes na release?
A imagem `.img.gz` grava uma instalação em cartão. O `-update.zip` atualiza uma instalação compatível pelo caminho nativo. Os dois têm usos diferentes.

### Como GitHub e R2 trabalham nesta entrega?
A entrega UID 20261102145554 inclui GitHub como origem principal e R2 como reserva para o mesmo pacote assinado e identificado. A primeira imagem espelhada, UID 20261102070544, conserva o cliente R2 anterior. Enquanto o repositório estiver privado, o cliente anônimo utiliza a reserva R2; nenhuma credencial GitHub é embarcada.
