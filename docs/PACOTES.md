# Pacotes e versões — NEXTOS 5.1

A entrega atual é a **r177, UID 20261103221131**; suas correções constam no [histórico](HISTORICO.md). A tabela abaixo conserva o inventário de referência **medido na UID 20261102145554** e não é apresentada como um novo inventário completo da r177.
Os números foram lidos dos próprios arquivos instalados no sistema desta versão: bibliotecas, binários e
metadados do build. Não são o que uma receita "pediria" nem o último lançamento de cada projeto.

Três avisos para ler a tabela:

- **"Atual" não quer dizer "o mais novo do mundo".** Cada versão é a que entrou nesta release,
  compilada em 01–02/11/2026. Alguns projetos já podem ter lançado algo mais novo depois.
- **Snapshot de desenvolvimento** indica que usamos um commit da linha principal do projeto, e não
  uma versão etiquetada. A versão mostrada é a que o próprio programa informa.
- **Fork fixado** indica um commit nosso ou de terceiros mantido de propósito (veja
  [Por que manter forks e versões fixadas](#por-que-manter-forks-e-versões-fixadas)).

## Base do sistema

| Componente | Versão embarcada | Tipo |
| --- | --- | --- |
| **Kernel Linux** | **5.15.223**, em duas variantes vendor: GXL (`nextos-fbdev`) e S4 (`nextos-s4`) | Fonte do fabricante + patches próprios. Detalhes em [DISPOSITIVOS.md](DISPOSITIVOS.md) |
| **systemd / udev** | **262.1** (`libsystemd` 0.45.0, `libudev` 1.7.15) | Release upstream, compilada limpa contra a UAPI nativa do kernel 5.15 |
| **glibc** | **2.44**, a mesma versão no userland ARM32 de compatibilidade | Release upstream |
| **GCC / binutils** (compilação do sistema) | **GCC 16.2.0** / **binutils 2.47** | Release upstream. Os kernels usam o compilador registrado na receita de cada kernel |
| **BusyBox** | 1.38.0 | Release upstream |
| **util-linux** | 2.42.4 | Release upstream |
| **kmod** | 34.2 | Release upstream |
| **D-Bus** | 1.16.2 | Release upstream |
| **Python** | **3.15.0** | Release upstream |
| **OpenSSL** | **4.0.3**, mais a biblioteca 3.x de compatibilidade (`libssl.so.3`) para programas que ainda a pedem | Release upstream |
| **curl** | 8.23.0 | Release upstream |
| **SQLite** | 3.54.1 | Release upstream |
| **zlib** | 1.3.2 | Release upstream |

A linha anterior, Retro Elite 5.0 (família Amlogic-old), roda o kernel **3.14**. A receita dela usa
o systemd **257.13** com um conjunto de patches de compatibilidade para aquele kernel. Na 5.1, o
systemd 262.1 é compilado **sem** esses patches, porque o kernel 5.15 já oferece o que ele precisa.

## Gráficos e entrada

| Componente | Versão embarcada | Tipo |
| --- | --- | --- |
| **SDL3** | **3.5.0 (desenvolvimento)**, linha principal após a 3.4.0, commit `41f6a9c4` | Fork fixado: main upstream + correções estáveis 3.4.x + dimensões nativas de janela/tela cheia em fbdev, conferidas na Mali-450 |
| **SDL2** | **2.32.75** via **sdl2-compat**, a camada SDL2 que roda sobre o SDL3; commit `3f045a4f` | Snapshot fixado, casado com o SDL3 acima |
| SDL2_image / mixer / net / ttf | 2.8.12 / 2.8.2 / 2.2.0 / 2.24.0 | Releases upstream |
| **Driver de GPU Mali-450 (GXL)** | `libMali` Utgard **r7p0** (fbdev) | Binário proprietário do fabricante, sem modificação |
| **Driver de GPU Mali-G31 (S4)** | `mali_kbase` + userland Bifrost do fabricante | Binário proprietário do fabricante |
| libdrm | 2.4.134 | Release upstream |
| libevdev | 1.14.0 | Release upstream |
| FreeType / HarfBuzz / libpng | 2.14.3 / 14.6.0 / 1.6.58 | Releases upstream |

## Multimídia e áudio

| Componente | Versão embarcada | Tipo |
| --- | --- | --- |
| **FFmpeg** | **linha 9.0 de desenvolvimento** (`libavcodec` 63.1.100), ramo `test/9.0/main` commit `c68aea78` | O mesmo pino usado pelo CoreELEC. Inclui os patches próprios de decodificação por hardware (amstream) nas placas GXL |
| **mpv** | 0.41.0 | Release upstream |
| **VLC** (prévias do frontend) | 3.0.23 | Release upstream |
| **ALSA** (lib / utils / UCM) | 1.2.16.1 / 1.2.16 / 1.2.16.1 | Releases upstream |
| **PulseAudio** | **17.0**, o servidor de áudio padrão | Release upstream |
| **PipeWire** | 1.6.9, opcional (ativado para o próximo boot pelo menu) | Release upstream |
| OpenAL Soft | 1.25.2 | Release upstream |
| FluidSynth | 2.6.1 | Release upstream |
| dav1d (AV1) | 1.5.4 | Release upstream |

## Rede, armazenamento e serviços

| Componente | Versão embarcada | Tipo |
| --- | --- | --- |
| BlueZ (Bluetooth) | 5.86 | Release upstream |
| ConnMan (rede) | 2.0 | Release upstream |
| OpenSSH | 10.6p1 | Release upstream |
| Samba | 4.25.0 | Release upstream |
| e2fsprogs / exfatprogs / NTFS-3G | 1.47.4 / 1.4.3 / 2026.9.28 | Releases upstream |
| rclone | commit `be8d6044` | Snapshot fixado |
| cloudflared | 2026.10.1 | Release upstream |

## Frontend, RetroArch e emuladores

| Componente | Versão embarcada | Tipo |
| --- | --- | --- |
| **EmulationStation** (frontend) | Fork próprio da linha ES-DE do EmuELEC, commit `1dc8436d`, com a fila de patches nativos do Retro Elite (inclui a correção do teclado virtual desta versão) | Fork próprio |
| **RetroArch** | **1.22.2**, commit `d4bb20c2` do fork próprio (correção de encerramento quando um core falha ao carregar, macros e reenvio de conquistas) | Fork fixado |
| **Cores libretro** | **127** cores ARM64 instalados, cada um no commit da sua receita | Commits fixados por core |
| PPSSPP | duas variantes: `PPSSPPSDL` (base v1.11.3 + 1233 commits, rota GLES2) e `PPSSPPSA` (snapshot aprovado `0c6aa15f`) | Forks fixados |
| DuckStation | commit `edaa0f83`, com perfil de configuração próprio "Elite" | Fork fixado |
| Mupen64Plus (standalone) | core 2.5.9, com plugins Rice, GLideN64 e Glide64mk2 | Commits fixados |
| ScummVM | 2026.4.1 (git), com as correções Indeo3 e YM2612 | Snapshot fixado |
| Hatari | 2.6.1 (desenvolvimento) | Snapshot fixado |
| Stella (standalone) | 6.2.1 | Release fixada |
| VICE (standalone) | 3.9 | Release upstream |
| Hypseus Singe | 2.12.1 | Release + ajustes |
| LÖVE (ferramentas próprias) | 11.5 | Release upstream |
| DraStic | build "advanced" 260120 | Binário proprietário de terceiros |
| Flycast, Flycast Dojo, Amiberry, DOSBox (várias), OpenBOR, Supermodel, IKEMEN GO, YabaSanshiro Elite, DSperate | um commit fixado por projeto | Commits fixados / forks |

## Atualizador

| Componente | Primeira entrega (UID 20261102070544) | Referência histórica (UID 20261102145554) |
| --- | --- | --- |
| Cliente de atualização (`nextos-updater`) | Consulta o canal oficial R2 | **GitHub principal e R2 de reserva**, manifesto **Ed25519** verificado por chave pública fixada, limite de tamanho/prazo dos metadados e identidade imutável. Cliente instalado e consulta assinada verificados no TX9 e no Aquário. |
| Atualização nativa | Stage, reinício, conclusão, preservação de dados e rollback | Mesma rota nativa; aplicação concluída nos dois aparelhos. |

Os demais pacotes inventariados nesta página mantêm as versões da primeira entrega. Na referência UID 20261102145554, a mudança era o cliente e a configuração do canal de atualização; isso não descreve o conjunto de correções da r177.

## Por que manter forks e versões fixadas

Atualizar tudo para o último commit nem sempre é o melhor para uma TV box Mali-450. A 5.1 fixa versões
por estas razões:

- **GPU antiga e driver fechado.** O Mali-450 só oferece OpenGL ES 2.0, por um driver proprietário
  fbdev de 2017 que não pode ser recompilado. Versões novas de alguns emuladores exigem GLES3/Vulkan
  ou mudam o caminho de renderização. Por isso o `PPSSPPSDL` fica numa base que ainda tem a rota GLES2.
- **ABI casada.** O sdl2-compat carrega os cabeçalhos do SDL3 que consome; por isso os dois sobem
  juntos, no mesmo par. Os cores libretro e o RetroArch também precisam de ABI e símbolos
  compatíveis. A troca de cores tem verificação e volta ao conjunto anterior se algo não bater.
- **Correções próprias.** Vários forks levam correções feitas e provadas para estas placas, por
  exemplo: tela cheia em fbdev no SDL3, encerramento limpo do RetroArch, decodificação por hardware
  no FFmpeg e saída sem travar com os saves gravados no DuckStation.
- **Reprodutibilidade.** Cada pacote aponta para um commit exato com hash. A mesma fonte gera os mesmos
  binários, e uma mudança nova precisa de prova antes de entrar numa release.

## Como conferir as versões no aparelho

- **START > SISTEMA E MANUTENÇÃO > VERSÕES, FONTES E CRÉDITOS** mostra a identificação da ROM (versão,
  UID e commit da fonte), o registro do frontend, a procedência dos kernels GXL e S4, a procedência do
  firmware de vídeo, o Java JM com sua fonte, e os avisos de licença presentes no sistema.
- O UID instalado também aparece no atualizador (**START > ATUALIZAÇÕES & TRANSFERÊNCIAS >
  ATUALIZAR RETRO ELITE**).
- Essa tela mostra os registros de compilação e licença gravados no sistema. Ela **não** lista a
  versão de cada biblioteca; esta página é que faz esse inventário, para a release indicada no topo.

As licenças de cada componente estão descritas em [CREDITOS-E-LICENCAS.md](CREDITOS-E-LICENCAS.md).
O desempenho medido está em [DESEMPENHO.md](DESEMPENHO.md), e o processo de atualização em
[ATUALIZACOES.md](ATUALIZACOES.md).
