# Desempenho, boot e memória — NEXTOS 5.1

Esta página reúne **só números medidos em aparelhos reais**, com data, versão e o que cada número
cobre. Nenhum valor aqui é uma promessa de FPS ou de velocidade para toda caixa. A medida vale
para o aparelho, a versão e o método descritos. Boot rápido, menu rápido, abertura rápida de jogo
e FPS são **quatro métricas diferentes**: uma não prova a outra.

## Boot

### Boot normal

| Medida | TX9 (GXL, 2 GB) | Aquário (S4, 2 GB) | Data / versão |
| --- | ---: | ---: | --- |
| Do kernel ao frontend logicamente pronto | **53,8 s** | **69,1 s** | 31/10/2026, r174 |

Esse intervalo começa quando o kernel assume. **Não inclui** o tempo do carregador da caixa (do
ligar na tomada até o kernel) nem garante o momento exato do primeiro quadro na TV.

Outras medidas pontuais:

- **Boot do Aquário sem Internet (sem WAN):** menu ocioso aos 80,07 s de uptime, sem processos
  órfãos. A rota WAN voltou sozinha em 87,41 s. A medida mostra que o sistema não trava sem Internet;
  não é uma comparação com o boot normal (30/10/2026).
- **Índice de módulos pré-calculado no S4:** a etapa isolada caiu de 21,530 s para 2,311 s, com
  índices idênticos (r174). É o ganho dessa etapa, não do boot inteiro.
- **Compressão do SYSTEM:** LZ4 e LZ4HC foram comparados com o LZO atual, na mesma amostra e no
  mesmo aparelho. O LZO continuou melhor nos dois critérios: no Aquário, o LZ4 ficou 18,75 % maior
  e 17,77 % mais lento de ler. **A compressão atual foi mantida** (31/10/2026).

### Primeiro boot e boot após atualização

São mais longos que o boot normal, de propósito.

- **Primeiro boot** de um cartão novo:
  - expande e formata a partição de jogos (EEROMS, exFAT) para ocupar o resto do cartão;
  - confere a partição de dados (STORAGE);
  - aplica os padrões de fábrica, entre eles o ZRAM;
  - depois abre o assistente de primeiro uso.
- **Boot após atualização:** o sistema aplica o pacote e mostra a tela de conclusão até 100 %. Só
  então segue para o menu.

O tempo de cada um depende do tamanho e da velocidade do cartão. Não há um número único para eles.

## Menus e frontend

### Navegação do frontend (otimização de 30/10/2026, incluída na 5.1)

As comparações foram pareadas no mesmo aparelho, com o mesmo método e a mesma ordem, em 30/10/2026:
a versão anterior r172 contra a candidata com a otimização. O valor é a mediana do tempo até a
**primeira mudança visual** na tela.

| Ação | r172 | 5.1 otimizada |
| --- | ---: | ---: |
| Aquário (S4): abrir/fechar menu principal | 278,38 ms | **22,82 ms** |
| Aquário (S4): abrir menus/submenus da rota | 40,41 ms | 39,94 ms |
| TX9 (GXL): abrir/fechar menu principal | 705,41 ms | **63,20 ms** |
| TX9 (GXL): abrir menus/submenus da rota | 721,62 ms | **95,14 ms** |
| TX9 (GXL): carrossel aquecido | 73,55 ms | 67,06 ms |
| TX9 (GXL): rolar lista aquecida | 82,00 ms | 63,89 ms |

CPU acumulada no percurso inteiro: S4 de 12.260 ms para 10.190 ms; TX9 de 9.930 ms para 5.790 ms.

O ganho não foi uniforme: algumas ações curtas variaram para cima, entre elas fechar submenu e
acomodar a lista fria no TX9. Os números não são FPS nem valem para todo tema. "Primeira mudança"
não quer dizer que a animação terminou. D905 e X2 não foram medidos nesta comparação.

### Navegação nos quatro aparelhos (referência anterior, 25/10/2026, R155)

Esta medição foi feita **antes** da otimização acima e serve só como fotografia daquela base. Ela
**não** compara versões. O método foram 12 movimentos com o controle, sem jogos.

| Aparelho | RAM disponível | Memória do frontend (PSS) | Mediana visual | Pior amostra |
| --- | ---: | ---: | ---: | ---: |
| TX9 | 1430,1 MiB | 145,5 MiB | 137,76 ms | 151,75 ms |
| D905 | 585,1 MiB | 69,0 MiB | 77,30 ms | 144,08 ms |
| X2 | 547,5 MiB | 72,1 MiB | 77,51 ms | 111,72 ms |
| Aquário | 1427,0 MiB | 109,0 MiB | 35,45 ms | 58,59 ms |

Os catálogos e temas diferem entre os aparelhos. Por isso a tabela não compara uma caixa com outra.

### Biblioteca de jogos

Caches limitados e sem varreduras quadráticas, medidos no TX9 em 29/10/2026:

- pasta tratada como jogo: 18,9 s → **4,6 s**;
- jogos de vários discos (PSX): 709 ms → **119 ms**;
- conferência de nomes repetidos (MAME): 1371 ms → **145 ms**, e 2 ms com o cache já pronto.

## Memória

### ZRAM (memória comprimida)

- O ZRAM vem **ligado de fábrica** no primeiro boot, a não ser que o usuário o tenha desligado ou
  ativado o swap em disco. O swap em disco e o ZRAM nunca ficam ligados juntos.
- O ZRAM pode ser ligado, desligado, redimensionado (128, 256 ou 512 MiB) e ter o compressor
  trocado em **SISTEMA E MANUTENÇÃO > RECURSOS E MEMÓRIA**.
- O perfil é escolhido pela RAM que o Linux enxerga:

| Perfil | Quando | Tamanho do ZRAM | Limite de RAM real usada pelo ZRAM | Compressor padrão |
| --- | --- | ---: | ---: | --- |
| **1 GB** | RAM visível < 1,25 GiB | 256 MiB | 128 MiB (metade) | `lzo-rle` |
| **2 GB** | RAM visível ≥ 1,25 GiB | 512 MiB | 256 MiB (metade) | `lz4` |

Abaixo de 256 MiB de RAM visível, o dimensionamento automático é recusado. A prioridade do swap
comprimido é 100.

**Estado lido nos aparelhos de referência em 02/11/2026, na versão final:**

| | TX9 | Aquário |
| --- | --- | --- |
| RAM visível (MemTotal) | 1.860.348 kB | 1.992.552 kB |
| Perfil ZRAM | 2 GB: 512 MiB, `lz4`, limite 256 MiB | 2 GB: 512 MiB, `lz4`, limite 256 MiB |
| `vm.swappiness` / `min_free_kbytes` | 10 / 16384 | 10 / 16384 |
| Governor de CPU no menu | `schedutil` (100 MHz–1,2 GHz) | `schedutil` (100 MHz–1,8 GHz) |

Por que `lzo-rle` nas caixas de 1 GB? Num ensaio de laboratório de 18/10/2026 no D905 (1 GB), com
carga de 550 MiB de memória anônima:

- o `lzo-rle` deu o melhor equilíbrio: razão de compressão 1,94, com menos trabalho de recuperação
  de memória e menos espera;
- o `zstd` comprimiu mais (2,71), mas com cerca de 3 vezes mais recuperação de memória.

Esse ensaio definiu o padrão; não é uma medida de jogo.

### RAM virtual não cria RAM física

O ZRAM guarda páginas pouco usadas **comprimidas dentro da própria RAM**. Isso deixa caber mais
coisa antes de faltar memória, mas tem custo de CPU e não é igual a ter mais memória:

- um "swap de 512 MiB" não transforma uma caixa de 1 GB numa de 1,5 GB;
- a memória da GPU e a do vídeo não são comprimidas;
- um jogo que precisa de mais RAM física do que a caixa tem continua não cabendo.

O swap em arquivo no cartão existe como alternativa opcional. Ele é bem mais lento que a RAM e
gasta o cartão.

### Economias de memória medidas

- **Módulos do kernel no S4 sem cópia para a RAM** (Aquário, 25/10/2026). Os 781 módulos (747 do kernel e 34 externos) passaram a
  ser lidos do SYSTEM somente leitura, em vez de copiados para a RAM, o que eliminou uma cópia de
  803.432.240 bytes. No mesmo boot, a memória disponível foi de 680.416 kB para 1.348.404 kB.
  Depois de um boot normal com a correção, a memória disponível foi 1.500.128 kB.
- **Servidor Samba duplicado removido** (TX9, 25/10/2026): os dois daemons extras somavam
  9.039 KiB de PSS. Como parte das páginas é compartilhada, esse número não é uma economia física
  exata.

## CPU e GPU durante jogos

- No menu, o governor é `schedutil`, que ajusta a frequência à carga.
- Ao abrir um jogo pelo RetroArch, o lançador pede o governor `performance` por padrão, dentro dos limites térmicos do fabricante. A opção pode ser desligada por sistema ou jogo; emuladores standalone seguem o próprio script ou perfil selecionado. Ao voltar ao menu, ele restaura o governor anterior. Para lançar mais rápido, essa
  troca é feita em segundo plano.
- A tabela de frequências, as tensões e os pontos térmicos **não são alterados**. Não há overclock.

## Vídeo por hardware (reprodução de vídeo, só GXL)

Medido no TX9 em 28/10/2026, com a CPU média dos 4 núcleos após 5 s de aquecimento:

| Conteúdo | Software | Hardware |
| --- | ---: | ---: |
| Arquivo 720p30 H.264 + AAC (30 s) | 41,7 % | **19,4 %** |
| Canal ao vivo 720p59.94 H.264 (HLS, 40 s) | 56,6 % | **26,3 %** |

O ganho vale para a reprodução reprodução de vídeo. Os menus e os emuladores já usavam a GPU, e não houve medida
de ganho neles. Conteúdo entrelaçado ou incompatível volta para o software. No S4, o vídeo é
decodificado por software.

## FPS de jogos

**Esta página não promete FPS.** O desempenho de cada emulador ou port depende do jogo, da cena,
do núcleo, da resolução interna e da caixa.
