# NEXTOS 5.1 — Histórico de versões

Este histórico separa duas coisas:

- **Versões publicadas** no canal estável, oferecidas pelo atualizador do sistema.
- **Marcos de desenvolvimento**: compilações internas, candidatas e imagens de bancada. Elas serviram para construir e testar a 5.1, mas nunca foram oferecidas como atualização recomendada.

Cada versão tem uma identificação única de atualização (**UID**), mostrada pelo atualizador. Todas fazem parte da série **5.1** e usam o **kernel Linux 5.15.223**. A revisão interna (r139, r175…) aparece entre parênteses só como referência.

> **Versão recomendada:** a mais recente desta página. Quem já usa a 5.1 recebe a atualização por START > ATUALIZAÇÕES & TRANSFERÊNCIAS > ATUALIZAR RETRO ELITE. As compilações listadas como marcos de desenvolvimento não são downloads recomendados.

---

## Versões publicadas no canal estável

### NEXTOS 5.1 — UID 20261109002541 (r186 Hyper) · 08/11/2026 · **atual**

Fonte `cd11c1ea2972a171d9eb57db5b2ab68ad7cfd3bf`. Entrega cumulativa sobre a r185 (incluindo a correção final da seleção de shaders por jogo no RetroArch além de todas as entregas da r186 Hyper), reunindo a transação de atualização em 2 GiB com `SYSTEM` residente no armazenamento e base preservada no `BOOT`, supervisor de ensaio de inicialização e resgate em RAM com código de suporte de 4 horas:

- PortMaster: corrigidos pedidos de atualização que podiam prender os diálogos, com reparo que preserva runtimes e pacotes atuais.
- Conexão: tentativas limitadas em falhas de DNS anteriores ao envio; suporte por código acessível em Kid/Kiosk, preservando o mesmo esquema desde r170.
- Backup: restauração preserva saves locais diferentes e guarda as versões recuperadas ao lado, com origem e data.
- Atualização: a operação confirmada continua se o menu fechar; jogos e desligamento automático continuam protegidos durante a operação.
- Continuar: acesso aos jogos recentes com miniaturas e retomada compatível, ou início normal sem perder saves.
- Memória no S4: corrigida a captura dos parâmetros que devem voltar ao padrão após sair dos jogos.
- RetroArch: perfis de fluidez e velocidade escolhidos passam a ser aplicados também com o helper de conquistas; run-ahead não fica ativo em sistemas que já o bloqueiam.
- Biblioteca: vista de uma versão por jogo com preferência de região, mantendo edições e hacks separados.
- Arcade: vista de pais e clones usando relações do core pinado; o clone disponível permanece acessível quando o pai está ausente.
- Biblioteca: todas as versões continuam acessíveis; a vista agrupada não apaga jogos nem altera listas originais.
- Saves: backup passa a mapear dados pessoais de DSi NAND, VMUs/flash do Flycast e cartões virtuais, excluindo BIOS e jogos.
- Saves: conversão explícita entre formatos compatíveis de NDS, N64 e PS1, com prévia e origem preservada.
- Saves: cópia de segurança antes de substituir um destino de conversão e confirmação adicional quando ele é mais recente.
- Saves: formatos desconhecidos, containers inválidos e savestates incompatíveis são recusados sem conversão.
- Armazenamento: aviso de somente leitura usa o estado real dos volumes e explica o bloqueio de gravação de saves.
- Armazenamento: registros antigos de falha são reconciliados com a montagem atual para evitar alertas e bloqueios falsos.
- Armazenamento: o aviso dá acesso à manutenção de cartão já existente, com confirmação antes da operação.
- USB: histórico local limitado de VID/PID, driver e interface, com indicação de adaptadores vistos anteriormente.
- USB: diagnóstico distingue driver ausente, interface sem link e falha explícita de firmware; ausência de leitura aparece como não confirmada.
- Diagnóstico: atalho opcional Select+L3+R3 ou Ctrl+Shift+F12 gera relatório local mesmo sem resposta do frontend.
- Diagnóstico: captura tem limite de execução, intervalo entre pedidos e não inicia atendimento remoto.
- Netplay: lista pública de salas com conexão direta ou relay, mantendo as ferramentas LAN.
- Netplay: conferência de conteúdo/core antes da preparação e senha opcional em configuração privada temporária.
- Shaders: catálogo GLSL instalado com número de passes e custo estimado, sem prometer ganho de FPS.
- Shaders: escolha opcional por jogo composta com o perfil de cadência, sem reescrever a configuração global.
- Conquistas: capacidades por core com fontes documentadas e estado desconhecido explícito, sem inferir suporte só de memory_descriptors.
- Conquistas: token de conexão opcional validado pelo login2 oficial, vinculado ao usuário e guardado em arquivo privado; login por senha existente permanece disponível.
- Conquistas: falhas de validação são apresentadas como falha, prazos de rede são limitados e senha/token são retirados dos logs de configuração.
- Indicadores: OSD integrado ao RetroArch com FPS do emulador; leituras de CPU, GPU, temperatura e RAM respeitam intervalo mínimo de quatro segundos para evitar mensagens sobrepostas.
- Indicadores: canal local privado, sem disputar planos de vídeo; em consumidores standalone, as métricas ficam disponíveis para diagnóstico, com FPS indisponível quando não há fonte real.
- Configuração por jogo: OSD, shaders, cadência e limite de avanço rápido deixam de vazar para o arquivo global por autosave; outros ajustes dessa sessão podem ser salvos manualmente no RetroArch.
- Recuperação: tela com IP e código do suporte logo abaixo, tempo restante e cancelamento, preservando o atendimento de quatro horas e o acesso por IA/SSH.
- Recuperação: corrigidos DNS, certificados e preparação do relógio para permitir conexão segura ao suporte no ambiente de resgate.
- Inicialização: corrigidas chamadas de recuperação no shell da ROM e caminhos de erro do Y7 que podiam encerrar a inicialização sem abrir o resgate.
- Atualização: supervisor acompanha o ensaio de inicialização e desarma ao confirmar o sistema ou estabelecer o atendimento remoto, evitando reiniciar uma recuperação em andamento.
- Armazenamento: quando o volume de jogos não pode ser montado, a recuperação usa a versão base preservada para manter o diagnóstico e o suporte disponíveis.
- Atualização: a versão base permanece intacta no BOOT; o sistema novo usa um espaço próprio no cartão de jogos, sem exigir duas cópias de SYSTEM na partição de BOOT.
- Atualização: preparação interrompida e retorno interrompido têm registros recuperáveis; a versão anterior é selecionada sem apagar jogos ou saves.
- Atualização: cada sistema instalado tem caminho próprio por identificação de conteúdo, evitando sobrescrita ao reutilizar a mesma pasta de atualização.
- Limpeza: cópias de atualização já consumidas podem ser removidas sem apagar o sistema ativo, o anterior preservado ou imagens ainda montadas.
- Saves DraStic: histórico e conversão usam a pasta realmente gravada pelo emulador, inclusive para jogos em subpastas, preservando o legado existente e protegendo nomes repetidos.
- Atualização: corrigido o cálculo de espaço para substituições do mesmo tamanho em BOOT residente, mantendo a versão base e seus backups intactos.
- Shaders: seleção por jogo passa explicitamente o preset ao RetroArch, corrigindo a permanência no efeito padrão; configuração global e opção de herdar são preservadas.

Política de canal: manifesto assinado Ed25519 oferecendo exclusivamente o pacote completo de 25 arquivos (`flat25` com SC2 normalizado em `files`, sem `representations`). Clientes modernos (`r178` segunda build até atuais) usam o helper autenticado do pacote; clientes antigos (`r170` até primeira `r178`) recusam de forma segura antes de tocar o `BOOT` e preservam a rota manual (`Atualizar Retro Elite.sh`). Validação física concluída no Aquário e no TX9; os 83 ports, o protocolo de 4 horas e as chaves desde a r170 permanecem intactos, sem alegar nova bateria física em todos os jogos/FPS ou modelos não testados nesta rodada.

[Download e arquivos da r186](https://github.com/NextOs-Ports/NEXTOS-5.1/releases/tag/v5.1-r186-hyper-20261109002541).

### NEXTOS 5.1 — UID 20261108232402 (r186 Hyper) · 08/11/2026

Fonte `565e5c5a68c5c91eeb4a42c80f35a210bc3430ca`. Entrega cumulativa sobre a r185, reunindo a transação de atualização em 2 GiB com `SYSTEM` residente no armazenamento e base preservada no `BOOT`, supervisor de ensaio de inicialização, resgate em RAM com código de suporte de 4 horas e todas as evoluções da r186 Hyper:

- PortMaster: corrigidos pedidos de atualização que podiam prender os diálogos, com reparo que preserva runtimes e pacotes atuais.
- Conexão: tentativas limitadas em falhas de DNS anteriores ao envio; suporte por código acessível em Kid/Kiosk, preservando o mesmo esquema desde r170.
- Backup: restauração preserva saves locais diferentes e guarda as versões recuperadas ao lado, com origem e data.
- Atualização: a operação confirmada continua se o menu fechar; jogos e desligamento automático continuam protegidos durante a operação.
- Continuar: acesso aos jogos recentes com miniaturas e retomada compatível, ou início normal sem perder saves.
- Memória no S4: corrigida a captura dos parâmetros que devem voltar ao padrão após sair dos jogos.
- RetroArch: perfis de fluidez e velocidade escolhidos passam a ser aplicados também com o helper de conquistas; run-ahead não fica ativo em sistemas que já o bloqueiam.
- Biblioteca: vista de uma versão por jogo com preferência de região, mantendo edições e hacks separados.
- Arcade: vista de pais e clones usando relações do core pinado; o clone disponível permanece acessível quando o pai está ausente.
- Biblioteca: todas as versões continuam acessíveis; a vista agrupada não apaga jogos nem altera listas originais.
- Saves: backup passa a mapear dados pessoais de DSi NAND, VMUs/flash do Flycast e cartões virtuais, excluindo BIOS e jogos.
- Saves: conversão explícita entre formatos compatíveis de NDS, N64 e PS1, com prévia e origem preservada.
- Saves: cópia de segurança antes de substituir um destino de conversão e confirmação adicional quando ele é mais recente.
- Saves: formatos desconhecidos, containers inválidos e savestates incompatíveis são recusados sem conversão.
- Armazenamento: aviso de somente leitura usa o estado real dos volumes e explica o bloqueio de gravação de saves.
- Armazenamento: registros antigos de falha são reconciliados com a montagem atual para evitar alertas e bloqueios falsos.
- Armazenamento: o aviso dá acesso à manutenção de cartão já existente, com confirmação antes da operação.
- USB: histórico local limitado de VID/PID, driver e interface, com indicação de adaptadores vistos anteriormente.
- USB: diagnóstico distingue driver ausente, interface sem link e falha explícita de firmware; ausência de leitura aparece como não confirmada.
- Diagnóstico: atalho opcional Select+L3+R3 ou Ctrl+Shift+F12 gera relatório local mesmo sem resposta do frontend.
- Diagnóstico: captura tem limite de execução, intervalo entre pedidos e não inicia atendimento remoto.
- Netplay: lista pública de salas com conexão direta ou relay, mantendo as ferramentas LAN.
- Netplay: conferência de conteúdo/core antes da preparação e senha opcional em configuração privada temporária.
- Shaders: catálogo GLSL instalado com número de passes e custo estimado, sem prometer ganho de FPS.
- Shaders: escolha opcional por jogo composta com o perfil de cadência, sem reescrever a configuração global.
- Conquistas: capacidades por core com fontes documentadas e estado desconhecido explícito, sem inferir suporte só de memory_descriptors.
- Conquistas: token de conexão opcional validado pelo login2 oficial, vinculado ao usuário e guardado em arquivo privado; login por senha existente permanece disponível.
- Conquistas: falhas de validação são apresentadas como falha, prazos de rede são limitados e senha/token são retirados dos logs de configuração.
- Indicadores: OSD integrado ao RetroArch com FPS do emulador; leituras de CPU, GPU, temperatura e RAM respeitam intervalo mínimo de quatro segundos para evitar mensagens sobrepostas.
- Indicadores: canal local privado, sem disputar planos de vídeo; em consumidores standalone, as métricas ficam disponíveis para diagnóstico, com FPS indisponível quando não há fonte real.
- Configuração por jogo: OSD, shaders, cadência e limite de avanço rápido deixam de vazar para o arquivo global por autosave; outros ajustes dessa sessão podem ser salvos manualmente no RetroArch.
- Recuperação: tela com IP e código do suporte logo abaixo, tempo restante e cancelamento, preservando o atendimento de quatro horas e o acesso por IA/SSH.
- Recuperação: corrigidos DNS, certificados e preparação do relógio para permitir conexão segura ao suporte no ambiente de resgate.
- Inicialização: corrigidas chamadas de recuperação no shell da ROM e caminhos de erro do Y7 que podiam encerrar a inicialização sem abrir o resgate.
- Atualização: supervisor acompanha o ensaio de inicialização e desarma ao confirmar o sistema ou estabelecer o atendimento remoto, evitando reiniciar uma recuperação em andamento.
- Armazenamento: quando o volume de jogos não pode ser montado, a recuperação usa a versão base preservada para manter o diagnóstico e o suporte disponíveis.
- Atualização: a versão base permanece intacta no BOOT; o sistema novo usa um espaço próprio no cartão de jogos, sem exigir duas cópias de SYSTEM na partição de BOOT.
- Atualização: preparação interrompida e retorno interrompido têm registros recuperáveis; a versão anterior é selecionada sem apagar jogos ou saves.
- Atualização: cada sistema instalado tem caminho próprio por identificação de conteúdo, evitando sobrescrita ao reutilizar a mesma pasta de atualização.
- Limpeza: cópias de atualização já consumidas podem ser removidas sem apagar o sistema ativo, o anterior preservado ou imagens ainda montadas.
- Saves DraStic: histórico e conversão usam a pasta realmente gravada pelo emulador, inclusive para jogos em subpastas, preservando o legado existente e protegendo nomes repetidos.
- Atualização: corrigido o cálculo de espaço para substituições do mesmo tamanho em BOOT residente, mantendo a versão base e seus backups intactos.

Política de canal: manifesto assinado Ed25519 oferecendo exclusivamente o pacote completo de 25 arquivos (`flat25` com SC2 normalizado em `files`, sem `representations`). Clientes modernos (`r178` segunda build até atuais) usam o helper autenticado do pacote; clientes antigos (`r170` até primeira `r178`) recusam de forma segura antes de tocar o `BOOT` e preservam a rota manual (`Atualizar Retro Elite.sh`). Validação física concluída no Aquário e no TX9; os 83 ports, o protocolo de 4 horas e as chaves desde a r170 permanecem intactos, sem alegar nova bateria física em todos os jogos/FPS ou modelos não testados nesta rodada.

[Download e arquivos da r186](https://github.com/NextOs-Ports/NEXTOS-5.1/releases/tag/v5.1-r186-hyper-20261108232402).

### NEXTOS 5.1 — UID 20261107155210 (r185) · 07/11/2026

Esta entrega reúne as mudanças desde a r183 publicada: integração HK1/SC2, recuperação de boot da r184 e proteção das listas e do armazenamento da r185. A imagem continua única, com o mesmo SYSTEM para os perfis suportados.

#### Cartão, saves e recuperação do armazenamento

- **Proteção contra formatação indevida:** uma partição de jogos sem assinatura reconhecível não é tratada automaticamente como cartão novo. A criação inicial exige autorização de primeiro uso, geometria esperada e região virgem comprovada; essa autorização é consumida antes de alterar o armazenamento.
- **Reparo antes de abrir os jogos:** sinais de volume sujo ou falha de montagem acionam uma tentativa controlada com a partição desmontada. A recuperação não executa reparo no filesystem em uso por uma partida.
- **Recuperação do cabeçalho exFAT:** quando a cópia de segurança comprova o conteúdo correto, o sistema pode restaurar a região principal danificada. Geometria, limites e checksums são conferidos antes da escrita.
- **Reparo conservador de metadados exFAT:** pode restaurar bits de alocação ausentes e o marcador de fim da cadeia no último cluster exato de um arquivo validado. Isso trata a classe de erro reproduzida em que jogos continuam legíveis, mas o volume passa a somente leitura e impede novos saves.
- **Preservação da biblioteca durante o reparo:** o modo automático não apaga nem renomeia entradas, não reduz tamanhos e não trunca arquivos. Cadeias ambíguas e erros sem solução comprovada ficam preservados para recuperação assistida. O indicador de volume sujo só é limpo após uma verificação independente.
- **Verificação de STORAGE com progresso:** o reparo ext4 deixa de ser interrompido pelo limite de 30 segundos. Se demorar, a tela informa que a recuperação continua; falha da interface de progresso não encerra a operação de disco.
- **Aviso discreto durante a recuperação:** texto no rodapé mantém a logo e respeita a margem da TV, nos formatos de imagem suportados, sem precisar carregar o driver gráfico do menu.
- **Boot saudável preservado:** volumes limpos não recebem essa varredura completa por rotina; não foi acrescentada leitura integral do SYSTEM ou da biblioteca a cada inicialização normal.

#### Listas de jogos, favoritos e capas

- **Gravação atômica do gamelist:** o XML é preparado e sincronizado em um arquivo temporário antes de substituir a versão anterior. Uma falha de escrita não começa truncando a lista existente.
- **Última cópia válida disponível:** o frontend conserva um backup completo e pode carregá-lo quando a lista principal está ausente ou danificada.
- **Original danificado preservado:** um XML inválido ou com estrutura incorreta não é tratado como uma biblioteca nova e vazia. O original é preservado durante a recuperação.
- **Alterações pendentes mantidas:** registros de recuperação, favoritos e metadados ainda não aplicados sobrevivem a falhas de gravação. Uma atualização parcial da lista preserva também as entradas que não foram carregadas naquela sessão.
- **Retorno após somente leitura:** quando só é possível salvar uma cópia em STORAGE, os registros pendentes continuam guardados para reaplicação quando a partição de jogos voltar a aceitar escrita.
- **Limpeza de mídia protegida:** quando a limpeza exige mudar o gamelist, a remoção das capas e mídias selecionadas só ocorre depois de a nova lista ser salva com sucesso.

#### Boot, manutenção e acesso de recuperação

- **Resgate em RAM antes dos dados pessoais:** ambiente separado com tela de diagnóstico, rede Ethernet e ferramentas administrativas de verificação/reparo. Serviços de configuração pessoal, frontend e GPU ficam fora desse ambiente.
- **Recuperação disponível no primeiro boot da atualização:** os componentes pequenos de resgate acompanham a inicialização e podem atuar mesmo quando ainda há um SYSTEM anterior.
- **Identidade administrativa preservada:** o resgate usa a identidade SSH e a autorização existentes, respeita rotações de chave e não cria senha ou uma identidade alternativa para obter acesso. Se a autorização não puder ser comprovada, o diagnóstico continua disponível e o SSH permanece fechado.
- **Falhas de boot acompanhadas:** registro de inicializações incompletas, pedido explícito de recuperação e prioridade para o rollback já existente. Desligamentos intencionais não são contados como falha.
- **Confirmação após saúde real do frontend:** a atualização aguarda o frontend selecionado, ES ou RetroArch, permanecer estável por 30 segundos, com o mesmo processo e driver gráfico carregado. A integração de confirmação do S4 também recebeu esse controle.
- **Instalações de jogos interrompidas:** os registros da instalação e os backups são preservados, com manutenção/suporte disponível mesmo sem o menu normal. A recuperação não é encerrada para abrir conteúdo parcial; após sua conclusão, o frontend pode voltar a iniciar.
- **Diagnóstico persistente e limitado:** registros pequenos e rotativos guardam o estado do boot, o último aplicativo conhecido e falhas relevantes do kernel, sem registrar conversas ou credenciais nesses diagnósticos.

#### HK1 RBOX X4S 2 GB / S905X4 (SC2)

- **Sexto perfil na mesma imagem:** HK1 RBOX X4S 2 GB/SC2 integrado junto de D905, TX9, X2, Aquário e Y7, com seleção de boot e DTB próprios. A integração preserva Android/eMMC.
- **Inicialização gráfica e perfil de áudio:** reconhecimento SC2 na seleção de GPU Bifrost, validação da identidade do DTB e configuração de áudio conforme o mapeamento da placa. O teste registrou frontend acelerado e saída 1080p60; áudio HDMI completo não recebeu nova certificação nessa rodada.
- **Wi-Fi inicializado automaticamente:** sequência específica para o adaptador BCM4334 da placa e uso do backend compatível, sem aplicar ao HK1 o reset de rádio de outra família.
- **Negociação Wi-Fi corrigida:** ConnMan cruza as capacidades do ponto de acesso e do adaptador antes de oferecer autenticação/PMF. Recursos de segurança continuam habilitados nos rádios que os suportam.
- **Transferência SDIO corrigida no HK1:** o caminho de transferência apropriado é usado para os comandos do rádio que apresentavam erros CMD53/CRC e falhas de recepção. A alteração é limitada à placa/comandos identificados, sem mudar clocks, limites térmicos ou o acesso SD/eMMC.
- **Bluetooth iniciado automaticamente:** firmware, UART e BlueZ preparados para BCM4334B0. Inicialização, resposta do controlador e descoberta foram verificadas, inclusive com Wi-Fi desligado; pareamento não foi comprovado nessa rodada.
- **Wi-Fi validado na integração:** conexão automática, desligar/ligar, reconexão após reinício e transferência de 16 MiB em cada direção com hash correto. Com cabo conectado, a preferência por Ethernet é mantida.

#### Atualização e qualidade da entrega

- **Mesmo SYSTEM em três transportes:** legado17, compatível19 e completo25/SC2, com o mesmo UID e fonte. A representação compatível mantém os atualizadores anteriores; o pacote completo inclui os arquivos nativos SC2 e sua validação por identidade/hash.
- **Compatibilidade histórica conferida:** os contratos r170–r180 passaram na validação de extração/BOOT GXL e S4 no PC. Na publicação, o manifesto assinado final também foi aceito pelos 27 registros de clientes examinados.
- **Origem compatível com clientes antigos:** clientes que fixavam o nome antigo do repositório usam o transporte R2. Clientes com a representação assinada mantêm GitHub principal e HTTPS/R2 de reserva, sem credencial S3 permanente na ROM.
- **Verificação anterior à compilação:** o processo padrão passa a executar o teste dos comandos do initramfs com o BusyBox ARM e as bibliotecas reais, bloqueando a composição quando falta uma ferramenta necessária. Isso é uma melhoria do processo de entrega.

#### Validação e alcance

A r185 concluiu atualização nativa em 100% e retorno ao boot normal no D905 e no Aquário, com frontend/verificador conferidos e listas acompanhadas preservadas. As provas de resgate em RAM da r184 e de rádio/boot do HK1 2 GB foram reaproveitadas para os componentes preservados.

As falhas de gravação e de exFAT foram reproduzidas em arquivos/imagens de teste, sem corromper cartões reais. Após o reparo, os saves persistiram após desmontagem e montagem. Os testes de tarefas de save, filas e VFS das duas revisões do RetroArch passaram no PC, inclusive com save comprimido em destino somente leitura: esse caminho já tratava o erro e **não exigiu uma nova correção no RetroArch**.

Não houve nova campanha de jogos/FPS nesta publicação. HK1 de 4 GB, pareamento Bluetooth, áudio HDMI completo do HK1 e todos os modelos de clientes não receberam certificação física nesta rodada. Falha física de cartão e dados sem recuperação comprovável continuam exigindo atendimento; a recuperação não é promessa de reparar qualquer corrupção.

Fonte `faa13061a7640fa97a4a94688dc3152d8c794a37`. [Download e arquivos da r185](https://github.com/NextOs-Ports/NEXTOS-5.1/releases/tag/v5.1-r185-andromeda-20261107155210).

Notas ampliadas após a publicação; artefatos e manifesto assinado preservados.

### NEXTOS 5.1 — UID 20261106034352 (r183) · 06/11/2026

Fonte `5caa6c317713da3e803e6ae7bc566b4286734e83`. Cumulativa sobre a r181 e a candidata r182.

- DTB individual para firmwares S905L que carregam kernel e DTB diretamente; perfis1GB/2GB pinados e preservados nas atualizações.
- Nomes reservados e colisões de caixa na FAT são recusados antes da escrita.
- Instalação e recuperação compartilham o contrato de nomes; a lista da transação limita limpeza e rollback aos arquivos envolvidos.
- Backups pessoais anteriores são preservados; preparo interrompido e confirmação concluída têm recuperação distinta.
- Limite térmico passivo GXL em85°C, com hot95°C e crítico110°C mantidos.

Atualização pelo canal e novo boot confirmados no Aquário e TX9. Testes do BusyBox ARM, assinatura/transação, imagem e onze clientes históricos. D905, X2, Y7 e G10 não tiveram nova rodada física nesta entrega. A candidata r182 foi revisada antes da publicação; as correções da revisão entram nesta r183.

### NEXTOS 5.1 — UID 20261105162256 (r181) · 05/11/2026 · substituída pela r183

Fonte `e4a7d13d855ab06189110a6a9fa8b6e3c6540e26`.

- Nintendo 3DS com Azahar ARM/GLES2 e otimizações instaladas junto dos novos pacotes de jogos pelo mesmo serviço privado de contas. Sem arquivos de sistema da Nintendo.
- Correção da identidade do controle no assistente inicial e durante conexão/desconexão de outros controles.
- Importação de coleções com prévia, capas e favoritos, sem substituir arquivos existentes.
- Conversão CHD/RVZ/CSO verificada, cancelamento e remoção explícita e segura do original.
- Automação com autenticação, Home Assistant, pausa, volume e desligamento.
- Ajustes de multitap, identificação de BIOS, configurações RetroArch 32/64 bits, memória do menu e exFAT.

Atualização assinada pelo canal e novo boot confirmados no Aquário e no TX9, com menu, SSH e configurações preservados. Validação de imagem/BOOT/ZIP para os cinco perfis e compatibilidade com onze clientes históricos; sem nova prova física de D905, X2 e Y7. Uma imagem e dois transportes do mesmo SYSTEM/UID.

### NEXTOS 5.1 — UID 20261104214108 (r180) · 04/11/2026 · substituída pela r181

Fonte `171fa5f0961317e9a589068ca6bdfbf84e9d356d`.

- PortMaster: recuperação automática do arquivo de abertura após a atualização própria, preservando a versão instalada e os dados.
- Jogo aleatório global e por sistema, incluindo subpastas, com shuffle e filtros para itens identificados como BIOS, utilitários e não funcionais.
- Notas da versão visíveis antes de confirmar a atualização, com versão pública, data e codinome.
- Configuração inicial por NEXTOS-SETUP.txt no cartão: Wi-Fi, idioma, fuso e nome do jogador; política de SSH preservada.
- Progresso dos jogos com estados Jogando, Zerado e Abandonado, escolha manual e coleções automáticas.
- Recuperação segura das permissões SSH observadas em cartões antigos, mantendo a identidade administrativa e sem acesso por senha.
- Uma imagem para os cinco perfis suportados, com kernel 5.15.223 e os caminhos de atualização compatíveis preservados.

A recuperação SSH mantém a chave administrativa autorizada, reconhece apenas metadados de fábrica revisados e preserva identidades rotacionadas. As correções anteriores do suporte remoto por código permanecem incluídas. A configuração inicial pelo cartão não aceita chaves ou comandos SSH.

A aceitação usa a compilação padrão, conferência dos arquivos reais de SYSTEM/BOOT/ZIP, assinatura e provas dos componentes. Não são alegados novos testes físicos desta revisão. Uma imagem, com dois transportes do mesmo SYSTEM/UID para clientes de atualização compatíveis.

### NEXTOS 5.1 — UID 20261104044137 (r179) · 04/11/2026 · substituída pela r180

Fonte `a8aa58d5f951b213ed833ebd24b735ffaccc008b`. Atualização cumulativa com a mesma base Linux 5.15.223 e imagem única para os cinco perfis.

- Suporte por código aguarda prontidão autenticada por até15s e mostra contagem regressiva durante a confirmação. O ajuste de espera preparado na revisão anterior integra esta geração.
- Helpers de rede disponíveis no menu S4/Y7; adaptadores continuam dependentes de driver e hardware compatíveis.
- Capas locais dos Exclusivos recuperadas pela identidade exata, preservando imagens pessoais e autorização dos downloads.
- Bibliotecas externas locais: seleção única quando a primária está vazia, sem mover jogos ou substituir escolhas explícitas.
- Shim V3 alcança o launcher original por atéduas pontes de atalhos gerados, mantendo argumentos e os gates existentes; não é garantia universal de ports.

A aceitação desta revisão usa compilação nativa, gates estáticos e provas de componentes. Não são alegados novos testes físicos da r179. Os ZIPs17/19 vinculados pelo mestre assinado transportam o mesmo SYSTEM/UID; a distribuição continua com uma imagem.


### NEXTOS 5.1 — UID 20261104011437 (r178) · 03/11/2026 · substituída pela r179

Entrega publicada com a fonte `034be8683c15adbff0f551aee2d18819d5a215cb`. Correções de suporte sobre a r177; a validação da ação do menu foi feita no Aquário pelo menu real.

- **Suporte por código:** ao iniciar o atendimento, o menu aguarda o código confirmado e mostra o progresso da conexão. Antes, a tela abria enquanto o supervisor ainda conectava e ficava em "Código: indisponível". Validado no Aquário: código em cerca de 12 segundos, fechar a caixa mantém a sessão e o encerramento explícito funciona. Cancelar a espera não encerra a sessão.
- **Suporte automático:** autorização explícita no menu. O primeiro cadastro é concluído pelo operador durante um atendimento por código atual; depois, o aparelho cadastrado informa sua presença nos próximos boots. Configurações existentes e revogações são preservadas. Credenciais administrativas e tickets compartilhados não acompanham a imagem.
- Herdados da r177: configuração de controles, retorno do RetroArch pelo perfil, salvamento atômico dos mapas, retomada do ES em S4, consulta HDMI corrigida e a segurança do canal de atualização (GitHub principal, R2 HTTPS, Ed25519, sem credencial S3; política de SSH inalterada).
- Y7/G12A integrado ao MESMO arquivo de imagem dos modelos D905, TX9, X2 e Aquário, com seleção automática do boot. O SYSTEM e as correções são comuns. Há relatos de testes da imagem atual no TX9, D905 e Y7. A atualização nativa da mesma geração concluiu no TX9 e no Aquário.

PortMaster: restauração do launcher compatível ausente em instalação mais nova, com versão e dados preservados. A interface passa a exibir NextOS 5.1; identificadores técnicos e reaplicação após autoatualização preservados.

**Limitação conhecida desta imagem:** em uma inicialização fria do TX9, o serviço auxiliar de suporte ficou pronto depois da janela curta de espera e não gerou código. O ajuste para aguardar até15s foi validado como componente temporário; ele NÃO está neste arquivo aprovado. Ficará na próxima geração, junto à integração futura do adaptador Wi-Fi. A geração de código pelo ES já aguarda o resultado da conexão; esse limite adicional do serviço é separado.

A distribuição mantém UMA imagem. Há dois ZIPs de transporte do MESMO SYSTEM/UID: o pacote de migração para clientes antigos e o pacote completo selecionado automaticamente pelos clientes novos, vinculados por um único mestre assinado.

### NEXTOS 5.1 — UID 20261103221131 (r177) · 03/11/2026 · substituída pela r178

Cartão e reinício do sistema aprovados nos testes desta entrega, fonte `5f01b5b104b7addb315a9601dbada47383525440`.

- Configuração de gamepad sem mapa antes das boas-vindas/assistente e teclado padrão em RAM quando falta perfil.
- Escrita atômica dos mapas, resultado verificado e aviso de erro sem concluir silenciosamente o configurador.
- Retorno do RetroArch aberto pelo menu pelo alias do perfil GXL/S4 e rótulo **Sair** em português.
- Retomada do EmulationStation ao reiniciar somente a interface no perfil S4.
- Lista de resoluções segue a indicação HDMI do driver, corrigindo o falso aviso de modo inseguro identificado.
- Base/segurança M71 preservadas: Linux 5.15.223, GitHub principal, R2 HTTPS e assinatura Ed25519, sem credencial S3 permanente na imagem.

As causas dos relatos de remapeamento GameSir e de travamento persistente não foram isoladas; os ajustes de gravação e enumeração de modos não são apresentados como correções causais universais. Y7/G12A não é acrescentado ao suporte. Não há nova rodada de benchmarks ou de validação de todos os aparelhos nesta revisão.

### NEXTOS 5.1 — UID 20261103010444 (r175) · 03/11/2026 · retirada; histórico

Esta release foi retirada após os relatos de configuração inicial de controles e retorno do RetroArch. Os recursos e as provas abaixo são históricos; seus binários não voltam a ser recomendados.

Menu da conta preservado após login; vitrine **VER JOGOS EXISTENTES** separada de **ACESSAR NEXTOS EXCLUSIVOS**, que reconsulta acesso ativo e abre a loja real. Ícone de lembrar acesso sincronizado com o estado. Categorias populadas priorizadas por contagem real, com a família de sistemas escolhida pelo proprietário e as vazias no fim; jogos e filtros pessoais preservados.

Catálogo online atualizado por publicações compatíveis e autorizadas, sem nova ROM por jogo. GitHub principal, R2 por HTTPS e assinatura Ed25519 permanecem. A imagem e o update vieram da composição padrão cumulativa e a atualização nativa concluiu no TX9 e no Aquário, preservando os dados verificados. Nenhum jogo acompanha a imagem virgem.

A entrega segura UID20261102221950 e seu histórico são preservados. Esta atualização não reativa a distribuição 5.0 nem altera seu leitor/serviço legado.

### NEXTOS 5.1 — UID 20261102221950 (r175) · 02/11/2026 · anterior segura preservada

Recursos e R2 de reserva por HTTPS, sem credencial S3 permanente embarcada. GitHub principal, assinatura Ed25519, verificação de identidade e integridade, acompanhamento e cancelamento dos downloads preservados. Configurações padrão geradas a partir dos arquivos de fábrica, sem dados de aparelhos utilizados.

Gerada pelo build padrão, instalada pela atualização nativa no TX9 e no Aquário e concluída a 100%. Boot, identidade, dados/configurações e consulta assinada sem credenciais S3 foram conferidos nos dois aparelhos. Kernel, emuladores e recursos previamente aprovados foram preservados.

As Releases anteriores foram retiradas e esta entrega substitui os downloads. O histórico abaixo descreve as respectivas versões, sem disponibilizar novamente seus binários.

### NEXTOS 5.1 — UID 20261102145554 (r175) · 02/11/2026 · substituída; Release retirada

Cliente de atualização com GitHub como origem principal e R2 como reserva, manifesto Ed25519 conferido por chave pública fixada, identidade imutável e consultas de metadados limitadas por prazo e tamanho. A leitura do manifesto R2 usa o comando nativo compatível com o rclone embarcado.

Gerada pelo build padrão e instalada pela atualização nativa no TX9 e no Aquário. Nas duas instalações, boot, conclusão, identidade e dados/configurações foram conferidos. O cliente instalado verificou a assinatura do manifesto pela reserva R2. O kernel, os emuladores e os demais recursos da entrega anterior foram preservados.

Nome público da edição: **Nextos**. Repositório **NEXTOS-5.1**, arquivos de distribuição **Nextos-5.1-UID.img.gz** e **Nextos-5.1-UID-update.zip**. Os identificadores técnicos internos permanecem compatíveis. As Releases foram revisadas em privado e abertas ao público em 02/11/2026, mantendo os mesmos binários e hashes aprovados.

### NEXTOS 5.1 — UID 20261102070544 (r175) · 02/11/2026 · primeira entrega espelhada

Primeira entrega aprovada desta etapa do lançamento. Antes da publicação, ela foi instalada pelo atualizador nativo em uma TV box de referência GXL e em uma S4. Nas duas, o boot e a conclusão da atualização foram conferidos, e as configurações e os dados ficaram preservados. Depois disso, o atualizador dos dois aparelhos passou a responder "O sistema já está atualizado".

- Configuração inicial com **nome opcional do jogador**. O assistente agora fecha por completo ao concluir.
- Imagem do menu catálogo ajustada aos limites da área. A lista fica bloqueada enquanto o aviso de atualização está na tela.
- Correções na criação, verificação e recuperação da partição de dados (STORAGE), preservando o journal ext4.
- Aplicativo Android próprio **Reiniciar Retro Elite 1.2**, com código-fonte e licença, para reiniciar para o cartão quando o Android autoriza.
- **JM Java compilado de fonte pública**, com controles, entrada, migração e bibliotecas revisados. As fontes e os avisos acompanham o sistema.
- Nome do jogador na saudação e no suporte remoto dos aparelhos cadastrados e autorizados.
- Proteções na recuperação do Bluetooth em placas S4.
- Downloads protegidos por conta ativa, com uma box por conta. As contas de compra e de assinatura são administradas pelo proprietário.
- Aplicativo **Reboot to CoreELEC 5.0**, com licença, também incluído na partição de boot.
- **Teclado virtual corrigido:** soltar a tecla usada para confirmar não fecha mais o editor de texto.
- Atualização cumulativa, com preservação das configurações e dos dados do usuário.

### NEXTOS 5.1 — UID 20261101171829 (r175) · 01/11/2026

Publicada no canal estável e depois instalada pela atualização normal nos dois aparelhos de referência (GXL e S4). As duas instalações concluíram e preservaram as configurações. Hoje está substituída pela versão de 02/11.

- **Nintendo DS:** nova opção de emulador (DSperate), com ajuda de toque e microfone.
- **Saturn:** emuladores atualizados, mantendo as opções e os formatos de saves.
- **Menus:** carregamento de listas e ferramentas mais leve.
- **Galeria de temas** e perfil visual portátil, com prévia e desfazer.
- **Biblioteca:** revisão de títulos e capas em lote, com prévia e desfazer.
- **Música e audiolivros:** busca local, capítulos e retomada.
- **Atualização local:** seleção de pacotes, prévia e preparo pelo menu.
- Prévia de espaço e opção de usar a pasta de Ports em SD ou USB.
- Horário, descanso e limite diário de jogo, com avisos opcionais.
- **Conquistas:** consulta offline da última confirmação salva e reenvio opcional após falhas, desligado por padrão.
- **Menos memória do menu durante o jogo** e fila de texturas cancelável ao voltar do jogo.

### NEXTOS 5.1 — UID 20261031060345 (r173) · 31/10/2026

Primeira versão gerada inteiramente pelo build normal depois da segunda leva de recursos Andromeda. O build, o pacote, os hashes, o BOOT e os DTBs foram validados antes da publicação. Foi publicada após as validações de build, pacote, BOOT e DTBs; está substituída pela r175. Não há afirmação adicional de instalação física dessa revisão neste histórico.

Trouxe para o canal estável o que foi desenvolvido entre 29 e 31/10:

- **Macros** opcionais por jogo, com cancelamento e soltura segura dos botões.
- **PipeWire opcional**, aplicado no próximo boot, com o PulseAudio mantido como padrão.
- **Equalizador** de 3 bandas com headroom.
- **Áudio remoto** pelo navegador e transferência de conteúdo pelo celular com PIN próprio.
- Cache de compilação e fila final de patches do ES consolidados no build normal.
- Infravermelho experimental desativado.

### NEXTOS 5.1 — UID 20261029191945 (r169) · 29/10/2026

A primeira versão Andromeda. Foi instalada nos dois aparelhos de referência pelo próprio canal de atualização, com saves e configurações preservados e jogos abrindo e fechando normalmente. Depois disso, foi promovida ao canal estável.

- **Retomar jogo**, **histórico de saves**, **sincronização de saves** e pastas de sistema.
- PlayStation 2 na lista do ES e **fallback automático de emulador arcade**.
- **Hub de ferramentas** nativas no ES. Tarefas podem ser canceladas com o botão de voltar.
- Cache e tempo de abertura menores, **acessibilidade** e **proteção de tela** com prévias.
- **Ordem fixa dos jogadores** por controle, **DualShock por jogo**, **conflito de atalhos** com decisão explícita.
- Lixeira, multidisco com playlists, BIOS explicado antes de abrir, diagnóstico de compatibilidade de ports.
- **Turbo** por jogo, **perfis de latência de áudio**, **netplay em LAN** e mecanismo de atualização de cores com rollback.
- Escrita atômica de configurações e extrator comum com staging, boot com tempo limitado.
- Gerenciador web com pareamento por PIN e sessão revogável. Nome local na rede.
- Correções: nomes de ROM com crase, controle DualShock, atualizador que limpa pacotes antigos e confere o espaço, gerenciador web nas placas S4.

Esta versão também levou ao canal estável o trabalho de 24 a 28/10:

- Logo de boot NEXTOS 5.1.
- .
- Criação segura do STORAGE.
- Manutenção nas placas S4.
- Restauração segura de configurações.
- SSH do proprietário por chave.
- **Decodificação de vídeo por hardware no reprodução de vídeo** das placas GXL, com retorno ao player por software.
- **Menus nativos**: ferramentas, multimídia, reprodução de vídeo com formulário próprio, tela de assistência quando o menu não abre.

### 5.1 — UID 20261023155502 (r141) · 23/10/2026

Publicada depois de os quatro aparelhos de validação da época concluírem a atualização.

- Kernels GXL e S4 gerados pelas receitas nativas, a partir das fontes preservadas.
- Corrigidos o manifesto de ativação GXL e os índices dos módulos externos S4.
- Gerenciador, suporte antigo e novo, drivers e demais componentes aprovados preservados.

### 5.1 — UID 20261023112915 (r140) · 23/10/2026

Publicada depois de os quatro aparelhos de validação concluírem a atualização. Foi substituída no mesmo dia pela r141.

- Primeira ROM 5.1 cumulativa gerada pelo build nativo, a partir de fontes, receitas e dependências.
- Gerenciador de pacotes revisado, com exclusão assíncrona.
- Suporte remoto antigo e novo convivendo. O suporte novo é opcional, com consentimento e revogação.
- Suporte nativo a NTFS. Recursos de ES, vídeo, áudio, Wi-Fi, BOOT e DTBs aprovados foram preservados.

### 5.1 — UID 20261023051446 (r139) · 23/10/2026

Primeira 5.1 publicada no canal estável.

- Correções cumulativas de ES/informações, áudio, vídeo e Wi-Fi.
- Cliente de downloads e build automático de pacotes incluídos.
- Entrada dedicada para placas X2, com DTB próprio. As placas S4 e os demais GXL foram preservados.
- Jogos, saves e configurações preservados na atualização.

---

## Marcos de desenvolvimento (não publicados)

Estas compilações existiram durante o desenvolvimento. Algumas foram instaladas em aparelhos de bancada ou gravadas em cartões de teste, mas **nenhuma é download recomendado**. O que elas trouxeram de útil chegou ao público pelas versões publicadas acima.

| Período | Revisões internas | O que foi trabalhado |
| --- | --- | --- |
| 23/10 | r137, r138 | Compilações preparatórias da primeira publicação 5.1. |
| 23–28/10 | r142 a r162 | Logo de boot, bootstrap do STORAGE, manutenção nas S4, restauração segura de configurações, scanner e compatibilidade S4, SSH do proprietário e decodificação por hardware nas GXL. Entraram na r169. |
| 30/10 | r170 a r172 | Macros, áudio remoto, PipeWire opcional e imagens de fábrica de bancada. Entraram na r173. |
| 31/10 | r174 | Base de bancada para medir memória do menu e fila de texturas. Entrou na r175. |
| 01/11 | r175 (candidatas intermediárias) | Candidatas antes da publicação de 01/11 e uma candidata de prova descartada depois. |
| 03/11 | r176, UID 20261103203332 | Cartão de teste anterior aos ajustes de gravação dos mapas e enumeração HDMI da r177; não é a entrega recomendada. |
| 02/11 | r175, UID 20261102001150 | Imagem cumulativa com cartão gravado e conferido. Substituída antes da publicação. |
| 02/11 | r175, UID 20261102055800 | Instalada nos dois aparelhos de referência. Durante o teste final apareceu o defeito do teclado virtual, e por isso ela nunca foi promovida. A correção resultou na versão 20261102070544. |

---

## Linha anterior: Retro Elite 5.0

A série 5.0 foi retirada do canal de atualização. O canal antigo continua preservado, mas a 5.0 não é a versão recomendada para novas instalações.
