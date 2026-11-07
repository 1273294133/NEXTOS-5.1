NextOS 5.1 r185 — UID **20261107155210**

Esta entrega reúne as mudanças desde a r183 publicada: integração HK1/SC2, recuperação de boot da r184 e proteção das listas e do armazenamento da r185. A imagem continua única, com o mesmo SYSTEM para os perfis suportados.

## Cartão, saves e recuperação do armazenamento

- **Proteção contra formatação indevida:** uma partição de jogos sem assinatura reconhecível não é tratada automaticamente como cartão novo. A criação inicial exige autorização de primeiro uso, geometria esperada e região virgem comprovada; essa autorização é consumida antes de alterar o armazenamento.
- **Reparo antes de abrir os jogos:** sinais de volume sujo ou falha de montagem acionam uma tentativa controlada com a partição desmontada. A recuperação não executa reparo no filesystem em uso por uma partida.
- **Recuperação do cabeçalho exFAT:** quando a cópia de segurança comprova o conteúdo correto, o sistema pode restaurar a região principal danificada. Geometria, limites e checksums são conferidos antes da escrita.
- **Reparo conservador de metadados exFAT:** pode restaurar bits de alocação ausentes e o marcador de fim da cadeia no último cluster exato de um arquivo validado. Isso trata a classe de erro reproduzida em que jogos continuam legíveis, mas o volume passa a somente leitura e impede novos saves.
- **Preservação da biblioteca durante o reparo:** o modo automático não apaga nem renomeia entradas, não reduz tamanhos e não trunca arquivos. Cadeias ambíguas e erros sem solução comprovada ficam preservados para recuperação assistida. O indicador de volume sujo só é limpo após uma verificação independente.
- **Verificação de STORAGE com progresso:** o reparo ext4 deixa de ser interrompido pelo limite de 30 segundos. Se demorar, a tela informa que a recuperação continua; falha da interface de progresso não encerra a operação de disco.
- **Aviso discreto durante a recuperação:** texto no rodapé mantém a logo e respeita a margem da TV, nos formatos de imagem suportados, sem precisar carregar o driver gráfico do menu.
- **Boot saudável preservado:** volumes limpos não recebem essa varredura completa por rotina; não foi acrescentada leitura integral do SYSTEM ou da biblioteca a cada inicialização normal.

## Listas de jogos, favoritos e capas

- **Gravação atômica do gamelist:** o XML é preparado e sincronizado em um arquivo temporário antes de substituir a versão anterior. Uma falha de escrita não começa truncando a lista existente.
- **Última cópia válida disponível:** o frontend conserva um backup completo e pode carregá-lo quando a lista principal está ausente ou danificada.
- **Original danificado preservado:** um XML inválido ou com estrutura incorreta não é tratado como uma biblioteca nova e vazia. O original é preservado durante a recuperação.
- **Alterações pendentes mantidas:** registros de recuperação, favoritos e metadados ainda não aplicados sobrevivem a falhas de gravação. Uma atualização parcial da lista preserva também as entradas que não foram carregadas naquela sessão.
- **Retorno após somente leitura:** quando só é possível salvar uma cópia em STORAGE, os registros pendentes continuam guardados para reaplicação quando a partição de jogos voltar a aceitar escrita.
- **Limpeza de mídia protegida:** quando a limpeza exige mudar o gamelist, a remoção das capas e mídias selecionadas só ocorre depois de a nova lista ser salva com sucesso.

## Boot, manutenção e acesso de recuperação

- **Resgate em RAM antes dos dados pessoais:** ambiente separado com tela de diagnóstico, rede Ethernet e ferramentas administrativas de verificação/reparo. Serviços de configuração pessoal, frontend e GPU ficam fora desse ambiente.
- **Recuperação disponível no primeiro boot da atualização:** os componentes pequenos de resgate acompanham a inicialização e podem atuar mesmo quando ainda há um SYSTEM anterior.
- **Identidade administrativa preservada:** o resgate usa a identidade SSH e a autorização existentes, respeita rotações de chave e não cria senha ou uma identidade alternativa para obter acesso. Se a autorização não puder ser comprovada, o diagnóstico continua disponível e o SSH permanece fechado.
- **Falhas de boot acompanhadas:** registro de inicializações incompletas, pedido explícito de recuperação e prioridade para o rollback já existente. Desligamentos intencionais não são contados como falha.
- **Confirmação após saúde real do frontend:** a atualização aguarda o frontend selecionado, ES ou RetroArch, permanecer estável por 30 segundos, com o mesmo processo e driver gráfico carregado. A integração de confirmação do S4 também recebeu esse controle.
- **Instalações de jogos interrompidas:** os registros da instalação e os backups são preservados, com manutenção/suporte disponível mesmo sem o menu normal. A recuperação não é encerrada para abrir conteúdo parcial; após sua conclusão, o frontend pode voltar a iniciar.
- **Diagnóstico persistente e limitado:** registros pequenos e rotativos guardam o estado do boot, o último aplicativo conhecido e falhas relevantes do kernel, sem registrar conversas ou credenciais nesses diagnósticos.

## HK1 RBOX X4S 2 GB / S905X4 (SC2)

- **Sexto perfil na mesma imagem:** HK1 RBOX X4S 2 GB/SC2 integrado junto de D905, TX9, X2, Aquário e Y7, com seleção de boot e DTB próprios. A integração preserva Android/eMMC.
- **Inicialização gráfica e perfil de áudio:** reconhecimento SC2 na seleção de GPU Bifrost, validação da identidade do DTB e configuração de áudio conforme o mapeamento da placa. O teste registrou frontend acelerado e saída 1080p60; áudio HDMI completo não recebeu nova certificação nessa rodada.
- **Wi-Fi inicializado automaticamente:** sequência específica para o adaptador BCM4334 da placa e uso do backend compatível, sem aplicar ao HK1 o reset de rádio de outra família.
- **Negociação Wi-Fi corrigida:** ConnMan cruza as capacidades do ponto de acesso e do adaptador antes de oferecer autenticação/PMF. Recursos de segurança continuam habilitados nos rádios que os suportam.
- **Transferência SDIO corrigida no HK1:** o caminho de transferência apropriado é usado para os comandos do rádio que apresentavam erros CMD53/CRC e falhas de recepção. A alteração é limitada à placa/comandos identificados, sem mudar clocks, limites térmicos ou o acesso SD/eMMC.
- **Bluetooth iniciado automaticamente:** firmware, UART e BlueZ preparados para BCM4334B0. Inicialização, resposta do controlador e descoberta foram verificadas, inclusive com Wi-Fi desligado; pareamento não foi comprovado nessa rodada.
- **Wi-Fi validado na integração:** conexão automática, desligar/ligar, reconexão após reinício e transferência de 16 MiB em cada direção com hash correto. Com cabo conectado, a preferência por Ethernet é mantida.

## Atualização e qualidade da entrega

- **Mesmo SYSTEM em três transportes:** legado17, compatível19 e completo25/SC2, com o mesmo UID e fonte. A representação compatível mantém os atualizadores anteriores; o pacote completo inclui os arquivos nativos SC2 e sua validação por identidade/hash.
- **Compatibilidade histórica conferida:** os contratos r170–r180 passaram na validação de extração/BOOT GXL e S4 no PC. Na publicação, o manifesto assinado final também foi aceito pelos 27 registros de clientes examinados.
- **Origem compatível com clientes antigos:** clientes que fixavam o nome antigo do repositório usam o transporte R2. Clientes com a representação assinada mantêm GitHub principal e HTTPS/R2 de reserva, sem credencial S3 permanente na ROM.
- **Verificação anterior à compilação:** o processo padrão passa a executar o teste dos comandos do initramfs com o BusyBox ARM e as bibliotecas reais, bloqueando a composição quando falta uma ferramenta necessária. Isso é uma melhoria do processo de entrega.

## Validação e alcance

A r185 concluiu atualização nativa em 100% e retorno ao boot normal no D905 e no Aquário, com frontend/verificador conferidos e listas acompanhadas preservadas. As provas de resgate em RAM da r184 e de rádio/boot do HK1 2 GB foram reaproveitadas para os componentes preservados.

As falhas de gravação e de exFAT foram reproduzidas em arquivos/imagens de teste, sem corromper cartões reais. Após o reparo, os saves persistiram após desmontagem e montagem. Os testes de tarefas de save, filas e VFS das duas revisões do RetroArch passaram no PC, inclusive com save comprimido em destino somente leitura: esse caminho já tratava o erro e **não exigiu uma nova correção no RetroArch**.

Não houve nova campanha de jogos/FPS nesta publicação. HK1 de 4 GB, pareamento Bluetooth, áudio HDMI completo do HK1 e todos os modelos de clientes não receberam certificação física nesta rodada. Falha física de cartão e dados sem recuperação comprovável continuam exigindo atendimento; a recuperação não é promessa de reparar qualquer corrupção.

## Arquivos da release

| Arquivo | Uso |
| --- | --- |
| `.img.gz` | Imagem virgem para instalação em cartão, sem jogos. |
| `-update.zip` | Transporte legado para clientes anteriores. |
| `-unified-update.zip` | Transporte compatível escolhido pelo atualizador assinado existente. |
| `-sc2-update.zip` | Pacote nativo completo com SC2, para aplicação pelo fluxo nativo compatível. Não substitui manualmente a escolha de um cliente antigo. |
| `SHA256SUMS`, `SHA256SUMS.sig`, `update-signing.pub` | Integridade e assinatura Ed25519. |

Fonte: `faa13061a7640fa97a4a94688dc3152d8c794a37`.
SYSTEM SHA-256: `82d03aaa16373e12e580f14447961643a25832fcd78a33f279d0302aa24803fb`.

Estas notas foram ampliadas após a publicação. A ROM, os pacotes, o UID, os hashes e o manifesto assinado permanecem os mesmos aprovados.
