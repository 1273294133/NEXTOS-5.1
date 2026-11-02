# RETRO ELITE 5.1 Andromeda — Recursos

O **Retro Elite 5.1 Andromeda** é um sistema de jogos retrô e multimídia para TV boxes Amlogic de 64 bits. Ele roda sobre o **kernel Linux 5.15.223**. O número 5.1 é a versão do sistema; 5.15.223 é a versão do kernel. São coisas diferentes.

O sistema parte da base **EmuELEC**, que por sua vez descende de CoreELEC e LibreELEC. Em cima dela, o Retro Elite reorganizou toda a interface em português e trouxe para dentro do EmulationStation ferramentas que antes ficavam espalhadas em aplicativos separados. Também acrescentou recursos próprios de biblioteca, saves, controles, áudio, rede, manutenção e suporte.

Esta página descreve o que existe na versão publicada, onde cada recurso fica nos menus e quais são os limites conhecidos. Recursos que dependem de hardware, conta ou serviço externo aparecem em uma seção separada no fim.

> Como ler os caminhos de menu: **START** abre o menu principal do EmulationStation. **SELECT** sobre um jogo abre as opções daquele jogo. Os nomes aparecem em maiúsculas, como na tela.

---

## Sumário

1. [Aparelhos e base do sistema](#1-aparelhos-e-base-do-sistema)
2. [Primeiro uso e perfil do jogador](#2-primeiro-uso-e-perfil-do-jogador)
3. [Organização dos menus](#3-organização-dos-menus)
4. [Emuladores, cores e ports](#4-emuladores-cores-e-ports)
5. [Biblioteca, capas e estatísticas](#5-biblioteca-capas-e-estatísticas)
6. [Saves, retomada e backups](#6-saves-retomada-e-backups)
7. [Controles, turbo, macros e perfis](#7-controles-turbo-macros-e-perfis)
8. [Áudio](#8-áudio)
9. [Tela, temas e proteção de tela](#9-tela-temas-e-proteção-de-tela)
10. [Multimídia](#10-multimídia)
11. [Rede, celular e transferência de arquivos](#11-rede-celular-e-transferência-de-arquivos)
12. [Armazenamento: cartão, USB e rede local](#12-armazenamento-cartão-usb-e-rede-local)
13. [Atualização e manutenção](#13-atualização-e-manutenção)
14. [Segurança, contas e NEXTOS EXCLUSIVOS](#14-segurança-contas-e-nextos-exclusivos)
15. [Ajuda, diagnóstico e suporte remoto](#15-ajuda-diagnóstico-e-suporte-remoto)
16. [Controle parental, tempo de jogo e descanso](#16-controle-parental-tempo-de-jogo-e-descanso)
17. [Desempenho e fluidez da interface](#17-desempenho-e-fluidez-da-interface)
18. [Ferramentas próprias do Retro Elite](#18-ferramentas-próprias-do-retro-elite)
19. [Recursos condicionais e limites conhecidos](#19-recursos-condicionais-e-limites-conhecidos)
20. [Créditos](#20-créditos)

---

## 1. Aparelhos e base do sistema

- **Plataforma:** pacote `Amlogic-nx` (AArch64), com perfis de boot para SoCs **GXL** (família S905X/S905L/S905W, conforme a placa) e **S4** (família S905W2).
- **Validação desta versão:** a versão final foi instalada pelo atualizador do próprio sistema em uma TV box de referência GXL e em uma S4. Nas duas, conferimos o boot, a conclusão da atualização e a preservação de dados. Outros modelos dependem de um DTB compatível com a placa. O Retro Elite não transplanta DTBs de outros sistemas.
- **Kernel:** Linux 5.15.223, compilado a partir das fontes preservadas pelo projeto. Os DTBs, os parâmetros de clock e o comportamento térmico aprovados foram mantidos nesta versão.
- **Partições:** o sistema fica na partição de boot. Jogos, BIOS, saves e configurações ficam na partição de dados (EEROMS/STORAGE), que o atualizador preserva.
- **Arquiteturas executáveis:** programas AArch64 nativos. Quando um emulador ou port precisa de ARM32, existe uma camada de compatibilidade com aceleração gráfica, inclusive um RetroArch de 32 bits.

## 2. Primeiro uso e perfil do jogador

| Recurso | Onde fica | Para que serve |
| --- | --- | --- |
| **Assistente de primeiro uso** | Abre sozinho no primeiro boot | Cinco passos com MAIS TARDE, PULAR e CONCLUIR. A confirmação em "Bom jogo" encerra o assistente e fecha as telas dele. O assistente não reaparece em instalações atualizadas. |
| **Nome do jogador (opcional)** | Primeira tela do assistente, "SEU NOME (OPCIONAL)", ou START > TELA E APARÊNCIA > MEU PERFIL NEXTOS > NOME DO JOGADOR | Personaliza a saudação ("Boa noite, Ana."). Aceita até 32 caracteres. Deixar vazio volta para "Bem-vindo ao Retro Elite 5.1". |
| **Tela de boas-vindas e painel** | MEU PERFIL NEXTOS | Saudação, cartões de estatísticas (tempo de jogo, último jogo, favoritos, sequência de dias), MOSTRAR AO LIGAR, MOSTRAR AO SAIR DO JOGO e PRÉ-VISUALIZAR O PAINEL. |
| **Modo TV e anti burn-in** | MEU PERFIL NEXTOS | MODO TV e ANIMAÇÃO ANTI BURN-IN para quem deixa o menu parado na tela. |
| **Teclado virtual** | Qualquer campo de texto | Digitação pelo controle. Na 5.1 foi corrigido o caso em que soltar a tecla usada para confirmar fechava o editor logo que ele abria. |

## 3. Organização dos menus

Na 5.1, as ferramentas usam as telas nativas do EmulationStation: listas, confirmações, teclado, leitor de texto e barra de progresso. Não abrem mais janelas de aplicativos à parte. As tarefas longas rodam em segundo plano, mostram progresso e podem ser canceladas com o botão de voltar, quando a operação permite.

| Menu (START) | O que reúne |
| --- | --- |
| **APLICATIVOS E MULTIMÍDIA** | YouTube, IPTV, Música e Audiolivros, Black Retro AI, Spotify Connect |
| **AJUSTES DE JOGO** | Cheats, PortMaster, Ferramentas de jogos, perfis de desempenho, menu e indicadores do RetroArch |
| **AJUSTES DE CONTROLES & BLUETOOTH** | Perfis, atalhos, teste, calibração, reparo e Bluetooth |
| **TELA E APARÊNCIA** | Meu Perfil NextOS, Galeria de temas, perfil leve do menu, filtro noturno, proteção de tela, teste de modo de vídeo |
| **AJUSTES DE ÁUDIO** | Saída preferida, reparo de áudio/HDMI, equalizador, latência |
| **AJUSTES DE REDE** | Wi-Fi, acesso pelo celular/QR code, diagnóstico de conexão, SSH |
| **ATUALIZAÇÕES & TRANSFERÊNCIAS** | Atualizar Retro Elite, Central de operações, cofre de saves, sincronização |
| **SISTEMA E MANUTENÇÃO** | Manutenção da biblioteca, backup e restauração, armazenamento, serviços opcionais, recursos e memória, versões e créditos |
| **AJUDA E SUPORTE** | Manual, diagnóstico, recuperação do menu, suporte remoto |

- Muitas telas terminam com **INFORMAÇÕES / COMO USAR**, um resumo rápido daquela tela.
- O **manual integrado** (START > AJUDA E SUPORTE > MANUAL) tem 11 tópicos e já usa os caminhos atuais.
- A antiga categoria SETUP saiu da lista de sistemas. Os ajustes do dia a dia ficam no START.

## 4. Emuladores, cores e ports

- **RetroArch** com **127 cores libretro** no sistema, além de um RetroArch de 32 bits para cores que precisam dele.
- **Emuladores standalone** incluídos, entre outros: DraStic e DSperate (Nintendo DS), YabaSanshiro em versão própria (Saturn), DuckStation (PlayStation), PPSSPP (PSP), Flycast e Flycast Dojo (Dreamcast/Naomi/Atomiswave), Mupen64Plus (Nintendo 64), ScummVM, Supermodel (Model 3), Amiberry, DOSBox, Hatari, VICE, Stella, OpenBOR, IKEMEN, Hypseus (Daphne) e players de mídia.
- **Lista de sistemas:** 151 entradas na lista padrão. A conta inclui categorias de mídia, coleções de hacks e ports, não só consoles.
- **Escolha de emulador por jogo:** pelas opções do jogo (SELECT), com CONFIGURAÇÕES TESTADAS, que propõe um emulador ou core já validado para o título e permite desfazer.
- **Fallback de arcade:** se um core de arcade não abrir o jogo, o sistema tenta outro core compatível sozinho.
- **Nintendo DS:**
  - DraStic e a alternativa **DSperate**, cada um com configuração própria.
  - Ajuda de toque e microfone: no perfil padrão do DSperate, L3 simula o microfone e R3 alterna o toque.
  - Modo **NINTENDO DS — LAN EXPERIMENTAL** para sessões em rede local entre dois aparelhos.
- **Saturn:** emuladores atualizados com melhorias compatíveis, mantendo as opções e os formatos de saves anteriores.
- **Java (J2ME):**
  - O **JM** é compilado de fonte pública, com controles, entrada e migração revisados. As fontes e os avisos acompanham o sistema.
  - Também está incluído o **J2ME Loader RetroElite**.
  - Os jogos `.jar` vão em `roms/freej2me`. O runtime Java ARM64 (Java 11 ou mais recente) vai em `roms/bios/jdk`.
- **ScummVM:** incluído com as correções de vídeo Indeo3 e de áudio YM2612 compiladas no build normal.
- **PlayStation (DualShock):** o modo DualShock é escolhido por jogo, não aplicado a todos. Os jogos que precisam dele podem abrir já em DualShock.
- **Ports:**
  - Categoria Ports e integração com o **PortMaster**, em START > AJUSTES DE JOGO > PORTMASTER: instalar, reparar, sincronizar o controle do ES, abrir ou remover a interface, sempre preservando jogos e runtimes.
  - A pasta de Ports pode ficar em um cartão ou USB, identificada pelo volume.
- **Pasta como jogo:** jogos distribuídos em pasta, com launcher declarado, aparecem como um item só.
- **Multidisco:** em MANUTENÇÃO DA BIBLIOTECA > PLAYLISTS, o sistema encontra jogos de vários discos, mostra uma prévia e cria a playlist `.m3u`. É possível desfazer.
- **BIOS explicado antes de abrir:** quando falta um BIOS obrigatório, o jogo mostra o motivo antes de iniciar, em vez de travar.
- **Diagnóstico de compatibilidade:** antes de abrir, o sistema detecta ports com binário de outra arquitetura ou com biblioteca ausente e mostra uma mensagem própria.
- **Cheats:** em AJUSTES DE JOGO > CHEATS, instala, atualiza ou remove a base oficial de trapaças do RetroArch e preserva os cheats pessoais.
- **Ferramentas de jogos:** editor de Counter-Strike 1.6 (nome, servidor, armamentos, backup) e gerenciador de saves de Resident Evil 2 (cópia entre Leon e Claire, com backup).
- **Netplay em LAN:** assistente para partidas entre dois aparelhos na mesma rede, com cores compatíveis.
- **Mecanismo de atualização de cores por conjunto:** confere a compatibilidade de ABI e símbolos dos cores, aplica a troca de forma transacional e volta ao conjunto anterior sozinho se detectar corrupção.

## 5. Biblioteca, capas e estatísticas

Ficam em **START > SISTEMA E MANUTENÇÃO > MANUTENÇÃO > MANUTENÇÃO DA BIBLIOTECA**, salvo indicação.

- **Histórico de atividade:** últimos 20 jogos, recém-adicionados, filtros e estatísticas locais, com exportação em texto. O tempo registrado é o tempo em que o aplicativo do jogo ficou aberto, pausas incluídas.
- **Capas faltantes — fila selecionada:** escolha até 20 jogos sem arte, busque prévias e confirme. A fila pode ser cancelada e retomada. Capas existentes ou trocadas à mão são preservadas.
- **Scraping sem conta:** a busca de arte funciona sem cadastro, com fallback. **AJUSTAR CAPACIDADE DAS PRÉVIAS** limita o espaço usado (padrão de 128 MiB, até 1 GiB).
- **Correção de arte e título por jogo:** pelas opções do jogo, com prévia, aplicação e desfazer. Uma auditoria aponta referências quebradas e permite corrigir até 20 títulos de uma vez.
- **Limpar referências inexistentes:** primeiro simula, depois grava, com backup dos XML. Nunca move ROMs, saves ou imagens.
- **Regenerar sistemas da ROM**, quando a lista de sistemas precisa ser refeita.
- **Lixeira:** jogos e ports excluídos pelo menu vão para a lixeira e podem ser restaurados. Esvaziar a lixeira mostra o espaço liberado.
- **Identificar port para capas:** mostra o título real de atalhos `.sh`, para a busca de arte.
- **Guia do jogo (SELECT > GUIA DO JOGO):** lê um arquivo `.guide.txt` ou `.txt` com o nome da ROM. L1/R1 mudam o tamanho da letra, e o leitor lembra a linha onde você parou.
- **Anotações do jogo (SELECT > ANOTAÇÕES DO JOGO):** notas curtas por jogo, como senhas de fase ou objetivos.
- **Traduções e patches opcionais por jogo:** aplicados só quando são compatíveis com aquele jogo.
- **Conquistas — última confirmação salva (offline):** consulta, sem internet, o último registro de conquistas obtido online. É um histórico e pode estar desatualizado.

## 6. Saves, retomada e backups

- **Histórico de saves (SELECT > HISTÓRICO DE SAVES):** guarda versões anteriores no cartão e permite restaurar quando um save foi sobrescrito por engano.
- **Timeline de checkpoints:** checkpoints periódicos de estado, com restauração por slot, nos cores compatíveis.
- **Retomada rápida (SELECT > RETOMADA RÁPIDA):** volta ao ponto onde você saiu, nos jogos libretro com suporte comprovado.
- **Lixeira e orçamento de saves:** retenção limitada, para o histórico não lotar o cartão.
- **Sincronização ao sair do jogo:** pode enviar os saves ao sair. Os conflitos entre a versão local e a remota são detectados, e nada é sobrescrito sem você escolher. Sem conexão, os envios ficam em fila e seguem depois.
- **Backup e restauração (SISTEMA E MANUTENÇÃO > BACKUP E RESTAURAÇÃO):**
  - Backups locais com manifesto e checksums.
  - Antes de restaurar, você revê o conteúdo.
  - A restauração é transacional, ou seja, ou aplica tudo ou não aplica nada.
- **Restaurar configurações do sistema:** volta às configurações padrão com backup prévio. O sistema mostra o resultado e só reinicia quando você pedir.
- **Perfis exportáveis:**
  - O perfil de preferências do sistema e o **perfil de aparência do menu** (fontes, transição, relógio, sons de navegação) podem ser exportados e levados a outro aparelho.
  - Antes de aplicar, aparece uma prévia, e dá para desfazer.
  - Os perfis nunca carregam senhas.

## 7. Controles, turbo, macros e perfis

Ficam em **START > AJUSTES DE CONTROLES & BLUETOOTH**.

- **Perfis de controle:**
  - Mapeamentos prontos para RetroArch, Mupen64Plus, DraStic, YabaSanshiro, DuckStation e FreeJ2ME.
  - A aplicação pode ser global ou por emulador, sempre com backup antes de gravar.
  - **CLONAR PERFIL** cria uma cópia em que você edita os atalhos sem perder o perfil de fábrica.
- **Atalhos com detecção de conflito:** ao atribuir um atalho que já está em uso, o sistema mostra **CONFLITO DE ATALHO** e oferece trocar, remover ou cancelar. A combinação SELECT+START, que sai do jogo, é protegida.
- **Turbo por jogo:** turbo com "segurar o modificador", configurado por jogo ou core. Ao sair, o turbo não fica ligado no jogo seguinte.
- **Macros opcionais:**
  - Macros por jogo no RetroArch (ARM64 e ARM32), com presets e editor nativo.
  - Uma tecla cancela a macro, e todos os botões são soltos ao sair.
  - Uma macro de um jogo não envia comandos ao menu nem a outro jogo.
- **Ordem fixa dos jogadores:** fixa o J1, o J2 e os demais pela identidade de cada controle. Religar os controles em outra ordem não troca os jogadores.
- **Calibrar analógicos do menu:** ajusta centro, limites e zona morta só na navegação do EmulationStation, sem afetar os jogos.
- **Testar controle:** mostra ao vivo os botões, os eixos e o direcional. Para sair, use SELECT+START ou ESC.
- **Mapear controle no ES** e **Importar mapeamento do ES:** cria um perfil personalizado a partir do mapeamento feito no ES.
- **Backups de controles:** snapshot atual, reverter o último backup por emulador ou restaurar um snapshot anterior.
- **Reparar controles:** volta aos controles padrão, com backup, e recarrega na hora. Inclui a correção específica para controle sem fio com receptor tipo C (hotkey R3).
- **Atalhos e ajuda do consumidor (SELECT):** mostra os comandos do emulador escolhido para aquele jogo, como avanço rápido, slots e estados.
- **Bluetooth:**
  - Liga e desliga pelo menu; vem desligado de fábrica. As telas de busca e pareamento estão disponíveis. O pareamento de controles e o áudio Bluetooth dependem da combinação de hardware e não foram certificados nesta entrega.
  - Controles que não informam nome aparecem como "Controle sem nome" com o endereço, para você identificar.
  - As operações podem ser canceladas.

## 8. Áudio

Ficam em **START > AJUSTES DE ÁUDIO**.

- **Saída de áudio e preferência ao reconectar:** escolhe a saída do PulseAudio. Com **PREFERIR SAÍDA AO RECONECTAR**, uma caixa ou placa de som USB volta a ser usada quando é reconectada. Se ela for desconectada, o som volta à saída anterior.
- **Reparar áudio / HDMI:** verifica e repara o som e testa a compatibilidade do HDMI. A mudança só é salva se você confirmar; sem confirmação, volta ao estado anterior.
- **Perfis de latência:** Seguro, Equilibrado e Baixa latência, além de uma ponte ALSA por jogo ou sistema. O perfil escolhido vale durante o jogo e volta ao padrão ao sair.
- **Transições suaves de volume:** a troca de saída e as mudanças de volume são feitas em rampa, sem saltos digitais nem ganho duplicado.
- **Equalizador de 3 bandas:** filtro próprio com margem (headroom) e limitação suave. Presets: plano, graves suaves, voz clara, TV à noite e personalizado.
- **Áudio acessível:** estéreo, mono, mono só no lado esquerdo ou mono só no lado direito.
- **PipeWire opcional:** o PulseAudio continua sendo o padrão. O PipeWire pode ser ativado para o próximo boot.

## 9. Tela, temas e proteção de tela

Ficam em **START > TELA E APARÊNCIA**.

- **Galeria de temas:**
  - Lista offline, prévias, favoritos e procedência de cada tema.
  - A instalação é reversível e não ativa o tema sozinha. O tema ativo fica protegido.
- **Compatibilidade com temas de outras distribuições:** os temas da linha Batocera/AmberELEC têm compatibilidade seletiva (posições de carrossel e de ajuda), validada por um verificador de esquema. A compatibilidade varia de tema para tema.
- **Observar memória do ES / tema ativo:** registra, durante 5 ou 10 segundos, quanta memória o processo do menu usa com o tema ativo.
- **Perfil leve do menu:** transições instantâneas e menos memória gasta com mídia, com backup da configuração anterior.
- **Testar modo de vídeo:** experimenta resoluções compatíveis até 720p por 25 segundos. Sem confirmação, volta sozinho ao modo anterior.
- **Filtro noturno (só menu):** temperatura de cor (2700–6500 K), intensidade e horário opcional, com prévia.
- **Acessibilidade:** escala de texto de 120% ou 140% no leitor e rolagem leve, com reversão.
- **Proteção de tela:**
  - **Relógios de mesa**, incluindo o relógio flip, e **DATA/HORA** configurável em tamanho (75–150%) e posição, com margem para TVs.
  - **Aquário Retro Elite**, com arte própria: de 0 a 8 peixes, dia e noite, algas e bolhas.
  - **Corredores interativos**: o direcional controla curva e velocidade. Essa interação vem desligada por padrão.
  - Capas, vídeo, slideshow e tela preta.
  - Prévias de cada opção.
  - A proteção não aparece durante jogo, netplay ou áudio em reprodução.
- **Tela de abertura do jogo:** mostra a capa e a etapa real do carregamento, e sai antes de o jogo assumir a tela.
- **Logo de boot** com a identidade Retro Elite 5.1.

## 10. Multimídia

Ficam em **START > APLICATIVOS E MULTIMÍDIA**.

- **YouTube:** pesquisa, listas, favoritos, playlist e histórico. A qualidade máxima é configurável (720p, 480p ou 360p).
- **IPTV:**
  - Player para contas IPTV contratadas à parte: canais ao vivo, filmes, séries, favoritos, histórico, grade de programação e PIN parental.
  - Em CONFIGURAÇÕES, os campos Usuário e Senha são separados e há o botão TESTAR CONEXÃO E CONTA. Contas recusadas, vencidas ou com renovação necessária têm mensagens próprias.
  - Nos aparelhos GXL, o vídeo usa decodificação por hardware, com retorno automático ao player por software. Os aparelhos S4 usam o player por software.
- **Rádio, playlists e marcadores:** rádios configuradas, playlists M3U locais e marcadores de posição em vídeos.
- **Música e audiolivros:**
  - Biblioteca local por álbum e pasta.
  - Busca por artista, álbum, faixa e livro, sem diferenciar acentos nem maiúsculas.
  - Fila de reprodução e retomada de onde parou.
  - Nos audiolivros: navegação por capítulo, velocidade e retomada por livro.
- **Ouvir durante os jogos:** DESLIGADO, MISTURAR ou SUBSTITUIR. Nos emuladores fora do RetroArch, só MISTURAR, e somente quando o som do jogo usa o servidor de áudio compatível. A música termina junto com a sessão do jogo.
- **Black Retro AI:** entrada de aplicativo no menu de multimídia. Depende da configuração e dos serviços externos associados; voz e integração Telegram não são anunciadas aqui como capacidades certificadas desta entrega.
- **Spotify Connect:** integração para receber músicas pelo serviço Spotify na rede local. Exige conta/serviço compatível e depende das regras atuais do provedor. Liga e desliga em SISTEMA E MANUTENÇÃO > SERVIÇOS OPCIONAIS.

## 11. Rede, celular e transferência de arquivos

- **Acesso pelo celular / QR code (AJUSTES DE REDE):**
  - Mostra o endereço e o QR code do gerenciador web local e liga ou desliga o servidor.
  - O acesso exige pareamento por PIN. A sessão é temporária e pode ser revogada.
  - Tentativas erradas seguidas geram espera, e pedidos vindos de outros sites são recusados.
- **Gerenciador web:**
  - Arquivos, ZIP, listas de jogos, troca de capa pelo celular e controle virtual.
  - Caminhos que tentam sair da pasta permitida e uploads com tamanho inconsistente são recusados.
  - Excluir uma ROM não apaga saves de nomes parecidos.
- **Transferência temporária pelo navegador (MANUTENÇÃO DA BIBLIOTECA):**
  - Sessão própria com PIN de 10 minutos, que nunca aparece no endereço.
  - Categorias delimitadas, fila, progresso e cancelamento.
  - Substituir um arquivo pede confirmação, e os saves ganham backup antes.
- **Tela pelo celular:** a aba Tela mostra a imagem do menu no navegador, mediante PIN. Veja os limites na seção 19.
- **Controle remoto pelo navegador:** página separada com controle por toque. O controle físico do aparelho sempre tem prioridade.
- **Áudio remoto opcional:** ouve o som do aparelho no navegador durante uma sessão autenticada.
- **Nome local e descoberta na rede:** o aparelho pode anunciar um nome `.local` e o serviço web na rede local. A descoberta é ligada e desligada pelo menu.
- **Diagnóstico de conexão:** verifica rota, DNS, relógio, montagem do cartão e o último erro de download.
- **Wi-Fi:** a senha da rede não aparece nos registros, e o arquivo de configuração fica protegido.
- **SSH de manutenção:** vem ativado de fábrica e aceita apenas a chave do mantenedor do projeto, sem senha genérica. O serviço pode ser desligado no ajuste SSH da rede. Esse acesso de manutenção é distinto do atendimento remoto por código/consentimento; a imagem contém a chave pública, nunca a chave privada do mantenedor.
- **Serviços opcionais (SISTEMA E MANUTENÇÃO > SERVIÇOS OPCIONAIS):** Acesso pelo celular, Spotify Connect e Bot Telegram. Serviços essenciais, como áudio e rede, não podem ser desligados por esse menu.

## 12. Armazenamento: cartão, USB e rede local

Ficam em **START > SISTEMA E MANUTENÇÃO > ARMAZENAMENTO E CARTÃO SD**, salvo indicação.

- **Estado dos volumes** e **discos conectados**.
- **Manutenção do cartão SD:** verifica e repara a partição EEROMS.
- **Preparar disco para ROMs:** cria a estrutura de pastas de jogos em um pendrive ou HD USB (exFAT), sem apagar arquivos existentes.
- **Ejetar com segurança** antes de remover um disco USB.
- **Biblioteca em rede (NAS SMB3)**, em MANUTENÇÃO DA BIBLIOTECA: monta uma pasta compartilhada da rede local em somente leitura. Os saves continuam gravados no aparelho. Se o servidor não responder, o menu continua responsivo.
- **Ports e bibliotecas em SD/USB:**
  - Associação persistente a um volume, identificado pelo UUID.
  - Antes de confirmar, aparece uma prévia com volume, sistema de arquivos e espaço livre.
  - Escolher o destino não move os arquivos existentes. Se o volume estiver ausente, ele fica protegido contra escrita.
- **Proteção do STORAGE:** a criação da partição de dados usa parâmetros ext4 explícitos. No boot, o sistema verifica a partição desmontada e só aceita correções seguras, sem formatar. Uma falha que não pode ser recuperada mostra uma tela explicando o problema.
- **Recursos e memória:** SWAP e ZRAM são configurados separadamente. **TEMPERATURA E FREQUÊNCIAS** e **INFORMAÇÕES DE MEMÓRIA** apenas leem o estado, sem alterar frequência, tensão ou limites térmicos.

## 13. Atualização e manutenção

- **Atualizar Retro Elite (ATUALIZAÇÕES & TRANSFERÊNCIAS):**
  - Consulta o canal oficial e compara a identificação única (UID) instalada com a disponível.
  - Baixa o pacote, confere a integridade e aplica a atualização em um reinício.
  - Jogos, BIOS, perfis de controle, saves e configurações são preservados.
- **Espaço e limpeza de pacotes:** antes de baixar, o atualizador confere o espaço livre e limpa pacotes antigos já consumidos. A lista de jogos fica bloqueada enquanto o aviso de atualização está na tela.
- **Rollback de boot:** a atualização deixa um recibo e mantém uma cópia do sistema anterior para o mecanismo de rollback.
- **Atualização offline (MANUTENÇÃO DA BIBLIOTECA > ATUALIZAÇÃO OFFLINE):**
  - Aceita um ZIP ou pasta em um volume local.
  - Mostra versão, destino, estimativa de espaço e resumo do que será preservado.
  - O preparo pode ser cancelado. No fim, você escolhe reiniciar agora ou depois.
- **Central de operações:** acompanha downloads de jogos e o histórico de operações. Downloads podem ser pausados, retomados ou recuperados.
- **Tarefas sem bloquear o menu:** um pedido repetido é avisado como "já em andamento", e cancelar não deixa arquivos parciais.
- **Hora, fuso e tarefas:**
  - Acerto de hora e fuso, com indicação de "hora provisória" até haver uma referência confiável.
  - Tarefas programadas não rodam com relógio incerto nem são repetidas ao mudar o horário de verão.
- **Versões, fontes e créditos (SISTEMA E MANUTENÇÃO):** mostra as versões instaladas e os avisos de licença disponíveis.

## 14. Segurança, contas e NEXTOS EXCLUSIVOS

- **NEXTOS EXCLUSIVOS:**
  - Loja nativa na lista de sistemas: catálogo por categorias, detalhes, espaço livre, download com verificação de integridade, abertura e exclusão de instalações.
  - O catálogo distribuído com o sistema pode ser consultado sem conta e sem internet ("Ver jogos existentes"). Baixar exige conta ativa.
- **Login dos Exclusivos:** formulário com USUÁRIO e SENHA editáveis em qualquer ordem, mais LEMBRAR ACESSO NESTE APARELHO. A senha fica mascarada, e um erro mantém os campos para correção.
- **Uma conta, uma box:**
  - Cada instalação tem uma chave de dispositivo persistente, e cada pedido privado é assinado e protegido contra reaproveitamento (replay).
  - A mesma senha em outra instalação é recusada.
  - Contas de compra (sem vencimento) e de assinatura (30 dias) são administradas pelo proprietário. Não existe cadastro público.
- **Modo criança e quiosque:** o modo restrito limita o menu e também as chamadas diretas às ferramentas internas.
- **Escrita atômica de configurações:** as configurações são gravadas de forma atômica, com erro visível quando não há espaço. Um corte de energia no meio da gravação não deixa arquivos pela metade.
- **Lançamento seguro:** jogos e ferramentas são iniciados por lista de argumentos, sem interpretar nomes de arquivo como comandos. Nomes com aspas, `$`, crase e acentos abrem normalmente.

## 15. Ajuda, diagnóstico e suporte remoto

Ficam em **START > AJUDA E SUPORTE**.

- **Manual** com 11 tópicos no leitor nativo.
- **Executar diagnóstico** e **Último diagnóstico:** verificam o sistema e o armazenamento sob demanda.
- **Exportar relatório para o cartão:** grava o relatório em `roms/nextos-suporte/diagnostico.txt`, sem credenciais.
- **Diagnóstico curto do aparelho:** teste rápido de CPU, memória, armazenamento e renderização do menu, sem alterar frequências.
- **Compatibilidade deste aparelho:** mostra os recursos disponíveis no aparelho e indica quando uma função depende de hardware adicional.
- **Recuperação do menu:** se o EmulationStation falhar repetidamente ao iniciar, abre um perfil temporário de segurança sem apagar suas configurações. Daqui é possível voltar ao tema e à configuração originais.
- **Última falha e estado do menu** e **Exportar resumo de falhas**.
- **Assistência sem o menu:** se o menu não conseguir abrir nem com a recuperação, uma tela simples mostra o código de suporte e orientações de rede.
- **Suporte remoto:**
  - Atendimento por código, com validade de até 4 horas. A sessão continua ao voltar ao menu ou abrir um jogo.
  - **ENCERRAR ATENDIMENTO POR CÓDIGO** termina a sessão, e **REVOGAR SUPORTE AUTOMÁTICO** desativa só o acesso automático.
  - Nos aparelhos cadastrados e autorizados, o nome do jogador aparece no painel de atendimento.

## 16. Controle parental, tempo de jogo e descanso

Ficam em **MANUTENÇÃO DA BIBLIOTECA**, salvo indicação.

- **Limite diário de jogo:** opcional, com cota que persiste entre reinícios e integração com o modo criança. O tempo conta enquanto o aplicativo do jogo está aberto.
- **Avisos durante o jogo:** aviso curto antes do limite. O som do jogo é reduzido por alguns instantes e depois restaurado, respeitando uma mudança manual de volume feita durante o aviso.
- **Descanso e desligamento seguro:** desligamento por inatividade opcional. Durante um jogo ou uma operação de arquivos, o pedido fica adiado.

## 17. Desempenho e fluidez da interface

- **Menos memória durante o jogo:** o ES libera memória ao abrir um jogo e, ao voltar, recarrega só a tela visível. Nos aparelhos de referência, a economia foi de cerca de 22–24 MiB de PSS durante o jogo, em uma comparação por aparelho (TX9 e S4); veja [Desempenho](DESEMPENHO.md).
- **Fila de texturas cancelável:** ao voltar do jogo, as imagens não ficam travadas na tela.
- **Biblioteca progressiva:** miniaturas proporcionais, primeiro quadro leve e menos consultas redundantes ao montar a lista.
- **Listas grandes:** caches limitados e eliminação de varreduras quadráticas. As pastas como jogo e o multidisco ficaram várias vezes mais rápidos de listar.
- **Boot com tempo limitado:** serviços fora do caminho crítico iniciam sob demanda, e o boot sem internet chega ao menu sem esperar a rede.
- **Shaders e caches:** reaproveitamento de shaders compilados, para evitar travadas repetidas.
- **Cadência de jogo:** menos trabalho por quadro no caminho de áudio e vídeo.
- **Política de CPU:** o governor padrão foi mantido depois de medição comparativa.

Estes ganhos são da interface e do caminho de lançamento. Eles não representam aumento geral de FPS nos jogos.

## 18. Ferramentas próprias do Retro Elite

Componentes criados ou reescritos para o Retro Elite:

- **Hub de ferramentas nativas do ES:** cheats, PortMaster, biblioteca, controles, áudio, rede, backup, armazenamento e suporte em telas nativas, com tarefas em segundo plano canceláveis.
- **Atualizador nativo** com recibo, verificação de integridade, preservação de dados, rollback e atualização offline com prévia.
- **Gerenciador web Retro Elite**, com pareamento por PIN, transferência temporária e controle e tela pelo navegador.
- **Cliente de suporte remoto** por código, com consentimento e revogação.
- **Loja NEXTOS EXCLUSIVOS** com cliente de downloads vinculado à conta e à box.
- **Equalizador próprio** de 3 bandas com headroom.
- **Proteções de tela originais:** Aquário Retro Elite, Corredores e relógios.
- **Reiniciar Retro Elite 1.2:** aplicativo Android próprio, na partição de boot, que reinicia para o cartão quando o Android autoriza. O código-fonte e a licença vêm junto. Também está incluído o aplicativo Reboot to CoreELEC 5.0, com a licença dele.
- **JM Java** compilado de fonte pública, com as fontes e os avisos incluídos.
- **Versão própria do YabaSanshiro** para Saturn e perfis de emuladores ajustados para TV box.
- **Diagnósticos:** compatibilidade da instalação, BIOS, saúde do áudio, armazenamento e controles.

## 19. Recursos condicionais e limites conhecidos

Os recursos abaixo existem no sistema, mas dependem de algo além da ROM ou têm um alcance menor do que o nome sugere.

| Recurso | Situação |
| --- | --- |
| **Bluetooth** | O serviço e o adaptador foram verificados no S4 de referência; pareamento de controles e A2DP não estão certificados nesta entrega. Em algumas placas S4, um controle USB de baixa velocidade sendo lido ao mesmo tempo pode afetar o adaptador Bluetooth USB, por limitação do controlador USB do aparelho. Para esse caso há uma rotina de recuperação limitada. Áudio Bluetooth (fones e caixas) não é certificado. |
| **Sincronização na nuvem** | A sincronização com remoto compatível e a detecção de conflitos estão prontas. Os provedores que usam login OAuth dependem de aplicativo e conta próprios, ainda não certificados. |
| **Controle da TV por HDMI-CEC** | Opção em TECLAS DO CONTROLE DA TV, desativada por padrão. Ainda não foi comprovada com uma TV CEC real. |
| **Tela pelo celular** | Mostra o menu. Jogos e vídeo acelerado por hardware ficam em um plano separado e podem não aparecer na captura. |
| **Áudio remoto** | Testado no Chrome. Outros navegadores não são certificados. |
| **Filtro noturno** | Vale só para o menu, não para jogos nem para o vídeo por hardware. |
| **Conquistas offline** | A consulta do último registro funciona sem internet. O reenvio automático após falhas vem desligado por padrão e depende de sessão online e do serviço de conquistas. |
| **DSperate LAN** | Sala LAN entre dois aparelhos comprovada. Corridas online, Download Play, DSi e Internet não são certificados. A compatibilidade varia por jogo. |
| **Reiniciar Retro Elite (Android)** | Depende de o Android do fabricante permitir o reinício. Algumas boxes exigem autorização ou root. |
| **Rede por cabo USB** | Não disponível. As portas USB das boxes testadas funcionam só como host. Use a transferência pela rede local. |
| **Serviços externos de multimídia** | Black Retro AI/Telegram, Spotify Connect e YouTube dependem de Internet, configuração e serviços/contas de terceiros. As capacidades desses serviços podem mudar; sua presença no menu não certifica todas as integrações externas. |
| **Recursos de portátil** | Bateria, carga desligada, LEDs, brilho e rotação não se aplicam às TV boxes. |
| **Uma conta, uma box** | A chave fica na instalação. Uma cópia da chave privada se comporta como a original, porque não há atestação física de hardware. |

## 20. Créditos

Os componentes proprietários, como DraStic, os drivers Mali e o firmware de vídeo, não são apresentados como código aberto. Seus termos de distribuição devem ser considerados individualmente; consulte [Créditos e licenças](CREDITOS-E-LICENCAS.md).

O Retro Elite reúne desenvolvimento próprio, projetos de código aberto e componentes de terceiros com licenças próprias. Cada componente mantém sua própria licença, e os avisos acompanham o sistema em SISTEMA E MANUTENÇÃO > VERSÕES, FONTES E CRÉDITOS.

- **EmuELEC**, de Shanti Gilbert e colaboradores: base direta do sistema.
- **CoreELEC** e **LibreELEC**: sistema de build, suporte Amlogic e base Linux.
- **Linux kernel** e os autores do suporte Amlogic.
- **RetroArch / libretro** e os autores de cada core.
- **EmulationStation**, na linha mantida pelo EmuELEC, e a comunidade de temas.
- Autores dos emuladores standalone: **DraStic** (proprietário, de Exophase), **DSperate**, **YabaSanshiro** (devMiyax) e o fork **yabasanshiro-pirry**, **DuckStation**, **PPSSPP**, **Flycast**, **Mupen64Plus**, **ScummVM**, **Supermodel**, **Amiberry**, **DOSBox**, **Hatari**, **VICE**, **Stella**, **OpenBOR**, **IKEMEN GO**, **Hypseus**, entre outros.
- **FreeJ2ME** e derivados públicos, base do JM Java.
- **PortMaster** e sua comunidade.
- **mpv**, **FFmpeg**, **PulseAudio**, **PipeWire**, **BlueZ**, **librespot** e **Skyscraper**.

Andromeda é o codinome desta série da Retro Elite. A autoria de cada componente e de cada integração continua reconhecida separadamente.

**RETRO ELITE** e a identidade visual vermelha são marcas do projeto Retro Elite. Os nomes de terceiros pertencem aos respectivos donos.
