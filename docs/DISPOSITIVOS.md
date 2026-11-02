# Hardware e kernel — NEXTOS 5.1

Esta página descreve **em que hardware a RETRO ELITE 5.1 foi feita para rodar, o que foi
realmente comprovado em aparelhos físicos e o que depende da sua placa**. Os nomes das caixas
servem só de referência: **o nome comercial não garante a placa interna.** Duas caixas vendidas com o
mesmo nome podem ter SoC, memória, Wi-Fi ou DTB diferentes, e a ROM não afirma funcionar em toda
caixa existente.

## ROM 5.1 não é o mesmo que kernel 5.15

- **RETRO ELITE 5.1 (Andromeda)** é a versão do sistema: frontend, menus, emuladores, atualizador,
  ferramentas e serviços.
- **Linux 5.15.223** é a versão do kernel embutido nessa ROM. Ele não é o kernel "mainline" puro: são
  duas árvores de fabricante (vendor) da Amlogic, uma para a família GXL e outra para a família S4,
  compiladas a partir da fonte pelas receitas do projeto.

A mesma imagem atende as duas famílias. O cartão traz os dois kernels e os DTBs. O carregador da
própria caixa e os scripts de boot escolhem o par certo para o SoC.

## Plataforma

| Item | Valor |
| --- | --- |
| Família de build | Amlogic-nx (baseada no projeto Amlogic-ce/EmuELEC) |
| Arquitetura | AArch64 (ARMv8-A, 64 bits), userland de 64 bits com suporte a binários ARM32 aprovados |
| Kernel | Linux 5.15.223 vendor, em duas variantes (abaixo) |
| Saída de vídeo | HDMI, por framebuffer (fbdev) do fabricante |

### As duas variantes do kernel

| Variante | Identificação no aparelho | SoC | GPU e driver |
| --- | --- | --- | --- |
| **GXL** | `5.15.223-nextos-fbdev-pc-lab` | Amlogic GXL (família S905X/S905L/S905W, conforme a placa) | **Mali-450** (Utgard), driver `mali` + `libMali` do fabricante, nó `/dev/mali` |
| **S4** | `5.15.223-nextos-s4` | Amlogic S4 — **S905W2** | **Mali-G31** (Bifrost), driver `mali_kbase`, nó `/dev/mali0` |

- **GXL:** CPU de 4 núcleos Cortex-A53 (até 1,2 GHz no aparelho de referência).
  - O kernel vem de uma derivação vendor com CEC/áudio AIU.
  - São 108 módulos.
  - No TX9 de referência, o próprio kernel identifica o chip como `GXL (S905L)`. A placa é tratada
    no projeto como S905X/P281. É mais um exemplo de que o nome na caixa não diz qual é o chip.
- **S4:** CPU de 4 núcleos Cortex-A35 (até 1,8 GHz no aparelho de referência).
  - O kernel é a árvore vendor S4 com sete patches próprios mais GPIO.
  - São 747 módulos do kernel e mais 34 módulos externos do fabricante, incluindo o da GPU Bifrost (781 no total).
  - No S4, a árvore de módulos é lida do SYSTEM somente leitura, sem cópia para a RAM (veja
    [DESEMPENHO.md](DESEMPENHO.md)).

### Gráficos: o que significa "GLES"

**Destaque da edição:** aceleração gráfica Mali-450 funcionando na base Linux5.15.223, com Mali/libMali e framebuffer do fabricante nos perfisGXL compatíveis. A migração e a integração preservam a execução acelerada dos componentes GLES2 da plataforma.

- **Mali-450** oferece **OpenGL ES 2.0**. É o alvo comum da ROM: frontend, emuladores e ports
  são feitos para funcionar em GLES2.
- **Mali-G31** suporta OpenGL ES 3.x pelo driver do fabricante. A ROM mantém a compatibilidade
  GLES2 como base comum. Alguns componentes usam GLES3 no S4 só onde isso foi provado, por exemplo
  o DuckStation, que tenta GLES 3.2/3.1/3.0 e volta para GLES2 se precisar.
- Não há Vulkan nem OpenGL de desktop. Os drivers de GPU são binários proprietários do fabricante.

## Aparelhos e DTBs

O DTB descreve a placa para o kernel: memória, pinos, Wi-Fi, HDMI e reservas. A imagem traz:

- `dtb.img` universal no formato AMLv2, com **quatro perfis**:
  - `gxl_p281_1g`
  - `gxl_p281_2g`
  - `s4_s905w2_2g`
  - `s4_s905w2_4g`
- `dtb-x2.dtb`, um DTB próprio da variante X2;
- `dtb-s4-2g.dtb` e `dtb-s4-4g.dtb`, carregados pelo `cfgload` no S4.

| Aparelho de referência | Perfil / DTB | RAM nominal | RAM visível ao Linux | Estado na 5.1 |
| --- | --- | --- | --- | --- |
| **TX9** | GXL `gxl_p281_2g` | 2 GB | ≈1,77 GiB | **Atualizado fisicamente para a versão final (UID 20261102070544)**: boot, finalização e preservação de dados aprovados. |
| **Aquário** | S4 `s4_s905w2_2g` | 2 GB | ≈1,90 GiB | **Atualizado fisicamente para a versão final (UID 20261102070544)**: boot, finalização e preservação de dados aprovados. |
| **D905** | GXL `gxl_p281_1g` | 1 GB | ≈850 MiB | **Aprovações anteriores reaproveitadas** (boot normal, kernel e STORAGE em rodadas de out/2026 da 5.1). A prevenção/reparação de STORAGE e boot D905 tem aprovação anterior reaproveitada. A gravação e leitura de cartão registradas pertencem a uma candidata anterior; não foram apresentadas como gravação ou primeiro boot da UID20261102070544 no D905. |
| **X2** | GXL, `dtb-x2.dtb` próprio (doador `gxl_p281_1g`) | 1 GB | ≈816 MiB | **Aprovações anteriores reaproveitadas.** A última instalação física registrada é a R157 (26/10/2026). A versão final não foi instalada na X2. O DTB da X2 tem mapa de memória e reservas próprios da placa. |
| **GameStick** | perfil sugerido: o mesmo do D905 (`gxl_p281_1g`) | — | — | **Depende da placa, do DTB e do SoC.** Nenhum GameStick físico foi testado. |
| Placa com perfil `s4_s905w2_4g` | S4 4 GB | 4 GB | — | **Perfil de fonte, sem atestação física.** O DTB existe e é gerado da mesma origem, mas nenhuma caixa de 4 GB foi testada. |

Caixas com outros SoCs (S905X2/X3/X4, S912, S922X etc.) **não fazem parte** desta família de imagem.

### RAM mínima e perfis de memória

- O menor perfil com DTB e prova física é o de **1 GB nominal** (D905 e X2).
- Os perfis de 2 GB (TX9 e Aquário) são os aparelhos de referência atuais.
- O sistema escolhe o perfil de memória comprimida pela RAM que o Linux enxerga, não pelo que está
  escrito na caixa. Veja ZRAM em [DESEMPENHO.md](DESEMPENHO.md).
- Parte da RAM nominal fica reservada a GPU, vídeo e firmware seguro (CMA/secmon). Por isso o
  "visível ao Linux" é menor que o nominal.

## Drivers e periféricos

| Recurso | Situação |
| --- | --- |
| **Vídeo HDMI** | Funciona nos aparelhos de referência. Os modos padrão observados foram 720p60 no TX9 e 1080p60 no Aquário. A ROM não altera o modo escolhido pela caixa/TV. |
| **Áudio HDMI** | Funciona: placa `AMLM8AUDIO` (GXL) e `AML-AUGESOUND` (S4), via PulseAudio. |
| **Áudio USB** | Aprovado no TX9 com um dispositivo real, o que encerrou a frente na 5.1. Cada interface USB de áudio depende do próprio dispositivo; não há lista certificada. |
| **Wi-Fi interno** | Presente e em uso nos aparelhos de referência (`wlan0`). O chip varia de placa para placa. Funcionar numa caixa não garante funcionar em outra de mesmo nome. |
| **Wi-Fi USB** | Há módulos adicionais para adaptadores USB comuns, compilados para os kernels congelados. O suporte depende do chip do adaptador e não há lista atestada por adaptador. |
| **Ethernet** | Presente nos aparelhos de referência (`eth0`). |
| **Bluetooth** | **Vem desligado por padrão.** No Aquário (S4), o serviço e o verificador de USB passaram num ensaio real: 104 comandos HCI sem erro, com a leitura do controle USB pausada. Mas **o host USB do S4 (CRG) falha quando um controle USB *low-speed* é lido ao mesmo tempo que um adaptador Bluetooth USB**. O sistema detecta e reinicia o USB uma vez por boot, como recuperação. Isso não torna o uso simultâneo garantido. A saída prática é um hub USB ou um controle full/high-speed. **Pareamento e áudio Bluetooth (A2DP) não foram certificados.** |
| **Controles USB** | Funcionam. Os mapeamentos são aplicados pelo sistema. Veja o limite com Bluetooth no S4 acima. |
| **CEC (controle pela TV)** | O nó CEC está no DTB GXL. **O controle real por TV CEC não foi atestado** nesta release. |
| **Receptor infravermelho** | Não é habilitado por padrão no DTB universal. |
| **Aceleração de vídeo (VPU)** | **Só GXL, só no player reprodução de vídeo:** H.264 por hardware com volta automática ao decodificador por software em qualquer falha. Usa firmware e módulos proprietários do fabricante. **No S4 o vídeo continua em software**: os módulos de decodificação S4 não fazem parte desta release. Os previews do frontend continuam em software nas duas famílias. |
| **Memória interna (eMMC)** | **A ROM não instala nada na memória interna.** Ela roda do cartão SD. A ferramenta de instalar na memória interna das versões antigas é removida desta família. O Android da caixa continua onde está. |
| **Clocks, tensões e limites térmicos** | São os do fabricante. A ROM não faz overclock nem muda tensões ou pontos térmicos. Ela só escolhe o governor de CPU (veja [DESEMPENHO.md](DESEMPENHO.md)). |

## Licenças de componentes de hardware

O kernel e a maior parte do sistema são software livre (GPL e outras licenças, que acompanham a
imagem). Os drivers de GPU (`libMali`), o firmware de vídeo e alguns módulos do fabricante são
**binários proprietários da Amlogic/ARM**, mantidos sem modificação.
