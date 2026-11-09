NextOS 5.1 r186 (Hyper) — UID **20261108232402**

Esta entrega cumulativa reúne as evoluções de biblioteca, emuladores, áudio/OSD, rede/Netplay, conquistas, diagnóstico USB e cofre/conversão de saves da **r186 Hyper**, junto da transação de atualização em **2 GiB** com `SYSTEM` residente no armazenamento e base preservada no `BOOT`, do supervisor de ensaio de inicialização e das correções do resgate em RAM com atendimento remoto de 4 horas. A imagem permanece única para **D905, TX9, X2, Aquário, Y7 e HK1 RBOX X4S 2 GB/SC2**.

## Atualização em 2 GiB, inicialização residente e recuperação

- **Base preservada no BOOT e sistema residente no armazenamento:** a versão base permanece intacta em `/flash/SYSTEM`, enquanto o sistema atualizado utiliza caminho próprio por conteúdo em `.nextos-update/systems/<UID>-<SHA256>/SYSTEM`, sem exigir duas cópias de `SYSTEM` na partição de `BOOT` de 2 GiB.
- **Transação e retorno recuperáveis:** preparação interrompida e retorno interrompido possuem registros atômicos recuperáveis; a versão anterior é selecionada sem apagar jogos, configurações ou saves.
- **Limpeza segura de sistemas consumidos:** cópias antigas já consumidas podem ser removidas preservando o sistema ativo, o anterior imediato, os estados pendentes e qualquer imagem ainda montada no loop.
- **Supervisor de ensaio de boot:** acompanha a primeira inicialização da atualização e desarma automaticamente ao confirmar a saúde do sistema ou estabelecer o atendimento remoto, evitando reiniciar uma recuperação em andamento.
- **Recuperação em RAM e suporte de 4 horas:** tela de resgate com IP e código de suporte logo abaixo, tempo restante e cancelamento, com correções de DNS, certificados, preparação de relógio e chamadas de recuperação (incluindo os caminhos de erro do Y7), preservando o protocolo de 4 horas e o acesso por IA/SSH desde a `r170`. Quando o volume de jogos não pode ser montado, a recuperação usa a versão base preservada.

## Biblioteca, saves, RetroArch, Netplay, conquistas e diagnóstico

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

## Política de atualização e arquivos da release (`flat25`)

Esta release publica o manifesto assinado Ed25519 oferecendo exclusivamente o pacote nativo completo de **25 arquivos (`flat25`)** com SC2 normalizado em `UPDATE.json` e `boot_targets = ["Amlogic-nx-gxl", "Amlogic-nx-s4", "Amlogic-nx-y7", "Amlogic-nx-sc2"]`, sem `representations` legadas:

- **Clientes modernos (`r178` segunda build até atuais):** validam e aplicam o pacote `Nextos-5.1-20261108232402-update.zip` pelo canal autenticado usando o helper empacotado (`nextos-update`) com transação de 2 GiB e validação semântica de kernel/DTB.
- **Clientes antigos (`r170` até primeira `r178`):** como seus helpers residentes antigos não continham `Kernel.s4`/Y7 nem a transação de 2 GiB, não recebem transportes `legacy17`/`compatible19` pelo manifesto; recusam de forma segura antes de tocar o `BOOT` e podem utilizar o lançador manual do pacote (`Atualizar Retro Elite.sh`) quando aplicável.

| Arquivo | Uso |
| --- | --- |
| `Nextos-5.1-20261108232402.img.gz` | Imagem virgem única para gravação em cartão (D905, TX9, X2, Aquário, Y7 e HK1 RBOX X4S 2 GB/SC2), sem jogos. |
| `Nextos-5.1-20261108232402-update.zip` | Pacote nativo completo de 25 arquivos (`flat25`), com helper autenticado de transação 2 GiB e suporte aos 6 perfis. |
| `manifest.json` e `release.json` | Manifesto assinado Ed25519 do canal (`flat25`, sem `representations`) e metadados técnicos da entrega. |
| `SHA256SUMS`, `SHA256SUMS.sig`, `update-signing.pub` | Lista de hashes SHA-256, assinatura Ed25519 e chave pública de verificação. |

## Validação e limites reais

- **Escopo validado nesta entrega:** compilação limpa da árvore congelada (`565e5c5a68c5c91eeb4a42c80f35a210bc3430ca`), verificação de empacotamento e paridade `BOOT`/`SYSTEM`/`UPDATE.json`, suítes automatizadas de cofre/conversão de saves (incluindo destino real do DraStic para ROMs em subpastas e colisão de nomes), testes de contrato dos clientes históricos e validação física nos aparelhos de bancada (**Aquário** e **TX9**) conforme registrado no recibo de aprovação da release.
- **Limites declarados:** os 83 ports, o esquema de suporte `>= r170` (intervalo de 4 horas) e as chaves de assinatura permanecem intactos; não se afirma que todos os 83 ports, todos os emuladores/FPS ou todos os modelos físicos (como D905, X2, Y7 e HK1 RBOX X4S de 2 GB/4 GB) passaram por nova bateria física completa nesta rodada.

Fonte: `565e5c5a68c5c91eeb4a42c80f35a210bc3430ca`
SYSTEM SHA-256: `0212e74eb91a9e54010697f6bf124181cf1d13b5357dd3f4246480b41ee3d814`
UPDATE.ZIP (`flat25`) SHA-256: `3e3788532533b1628e09943a5831669866ff8996a17dc14a2b34847ded8663e6`
IMG.GZ SHA-256: `a6cd7eff9c22a3ee382980986522d778262837278bfb1c399cbe24627a681174`
