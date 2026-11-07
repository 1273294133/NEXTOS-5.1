# NEXTOS 5.1 — Histórico de versões

Este histórico separa duas coisas:

- **Versões publicadas** no canal estável, oferecidas pelo atualizador do sistema.
- **Marcos de desenvolvimento**: compilações internas, candidatas e imagens de bancada. Elas serviram para construir e testar a 5.1, mas nunca foram oferecidas como atualização recomendada.

Cada versão tem uma identificação única de atualização (**UID**), mostrada pelo atualizador. Todas fazem parte da série **5.1** e usam o **kernel Linux 5.15.223**. A revisão interna (r139, r175…) aparece entre parênteses só como referência.

> **Versão recomendada:** a mais recente desta página. Quem já usa a 5.1 recebe a atualização por START > ATUALIZAÇÕES & TRANSFERÊNCIAS > ATUALIZAR RETRO ELITE. As compilações listadas como marcos de desenvolvimento não são downloads recomendados.

---

## Versões publicadas no canal estável

### NEXTOS 5.1 — UID 20261107155210 (r185) · 07/11/2026 · **atual**

Fonte `faa13061a7640fa97a4a94688dc3152d8c794a37`. Cumulativa sobre a r183, incluindo a recuperação r184 e a integração HK1/SC2.

- Recuperação em RAM antes de acessar os dados, manutenção de instalação interrompida e registros de saúde do boot.
- Ausência de assinatura de EEROMS não autoriza formatação. Reparos automáticos ficam limitados a metadados comprovadamente recuperáveis, com progresso discreto.
- Listas de jogos e favoritos com gravação atômica, backup, recuperação e retenção de arquivos danificados ou pendentes de replay.
- Falha exFAT com remontagem somente leitura reproduzida em imagens de teste; reparo e persistência dos saves após remontagem conferidos.
- Perfil HK1 RBOX X4S 2 GB/SC2 integrado na imagem única; Wi-Fi/Bluetooth preservam a validação anterior da placa testada. Modelo de 4 GB sem validação física alegada.
- D905 e Aquário: atualização nativa concluída em 100%, boot normal, frontend e verificador conferidos, listas acompanhadas preservadas.
- Compatibilidade de transporte r170–r180 verificada no PC. Pacotes legado17, compatível19 e completo25 compartilham SYSTEM/UID; o canal conserva os dois transportes aceitos pelos clientes existentes.

[Download da r185](https://github.com/NextOs-Ports/NEXTOS-5.1/releases/tag/v5.1-r185-andromeda-20261107155210).

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
