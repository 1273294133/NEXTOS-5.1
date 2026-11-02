# Instalação, primeiro boot e atualização — RETRO ELITE 5.1 Andromeda

A RETRO ELITE 5.1 **roda do cartão SD**. Ela não apaga nem substitui o Android da caixa e não grava
nada na memória interna (eMMC). Tire o cartão e a caixa volta a ser o que era.

> Antes de começar, confira em [DISPOSITIVOS.md](DISPOSITIVOS.md) se a sua caixa é da família suportada
> (Amlogic GXL ou S4/S905W2). O nome comercial da caixa não garante a placa interna.

## 1. O que você precisa

- Uma caixa Amlogic de família compatível, com HDMI.
- Um cartão microSD **maior que a imagem**. A imagem tem cerca de 4,9 GB. O espaço que sobrar no
  cartão vira a área de jogos. Os cartões de referência do projeto foram de 64 e 128 GB.
- Um leitor de cartões e um programa que grave imagens: balenaEtcher, Raspberry Pi Imager com a
  opção "imagem personalizada", ou `dd` no Linux.
- Um controle USB. Teclado e mouse ajudam, mas não são obrigatórios.
- Opcional: rede por cabo ou Wi-Fi, para atualizações, downloads e suporte.

## 2. Baixar e conferir

1. Baixe a imagem `.img.gz` da última release estável na página **Releases**.
2. Confira o **SHA-256** do arquivo contra o valor publicado na release.
   - No Linux/macOS: `sha256sum arquivo.img.gz`.
   - No Windows (PowerShell): `Get-FileHash arquivo.img.gz`.

Use **só a release estável atual**. Versões antigas, candidatas e rascunhos de teste não são
download recomendado.

## 3. Gravar o cartão

1. Grave a imagem no cartão com o programa escolhido. O balenaEtcher e o Raspberry Pi Imager aceitam
   o `.gz` direto e conferem a gravação.
2. **Isso apaga tudo o que havia no cartão.**
3. Depois da gravação, o cartão terá três partições:

| Partição | Sistema de arquivos | O que guarda |
| --- | --- | --- |
| `RETROELITE` | FAT (2 GiB) | Kernels, DTBs, scripts de boot, o sistema (`SYSTEM`) e os aplicativos Android de inicialização |
| `STORAGE` | ext4 (2,5 GiB) | Configurações, perfis de controle, dados do suporte e do sistema |
| `EEROMS` | exFAT | Jogos, BIOS e mídia. **No primeiro boot ela é expandida e formatada para ocupar o resto do cartão.** |

## 4. Primeira inicialização pelo cartão

Caixas com Android precisam ser reiniciadas **em modo de atualização** para que o carregador da
própria caixa procure o cartão. O script do cartão:

- **não instala bootloader** nem grava variáveis permanentes;
- mantém as mudanças de ambiente só na memória do carregador;
- carrega o kernel e o DTB do cartão.

### Com o aplicativo "Reiniciar Retro Elite" (recomendado)

O aplicativo vem na partição `RETROELITE` do cartão, junto com sua licença (MIT) e o código-fonte.
É um aplicativo próprio do projeto.

1. Com a caixa no Android e o cartão inserido, instale `Reiniciar_Retro_Elite_1.2.apk` a partir da
   partição `RETROELITE`.
   - O Android pode pedir permissão para instalar apps de fontes desconhecidas.
2. Abra o aplicativo. Abrir já é o pedido: ele envia `reboot update` pelo primeiro caminho que o
   Android permitir. São três caminhos, nesta ordem:
   1. **Permissão de sistema de reinício**, quando o app estiver instalado com ela. Isso é raro.
   2. **Root**, *somente se a caixa já tiver root*. O gerenciador de root pergunta, e você responde.
   3. **Depuração ADB local da própria caixa.** Exige a "Depuração USB/ADB" ligada nas opções de
      desenvolvedor. No primeiro uso, o Android mostra "Permitir depuração?" para a chave do app.
3. Se nenhum caminho funcionar, a tela do app explica por quê e oferece "Tentar de novo".
   O app nunca anuncia sucesso; o sucesso é a caixa reiniciar.

O aplicativo **não usa exploit**, não altera o SELinux e não leva senha embutida. **Este guia não
ensina a fazer root.** Se a sua caixa não tem root nem ADB disponível, o caminho do app não vai
funcionar nela.

O aplicativo passou por verificações em Android 7 e 12 de referência (AOSP). Ele **não foi provado no
Android de fábrica de todas as caixas**: cada fabricante restringe permissões, ADB e modo de
atualização de um jeito.

### Pelo botão de reset (alternativa)

Muitas caixas Amlogic entram no mesmo modo de atualização quando ligadas segurando o botão de reset.
Esse botão costuma ficar escondido no conector de áudio/AV ou num furo. O projeto não atestou esse
método em cada modelo.

### Depois da primeira vez

- No **S4**, o carregador lê o `cfgload` do cartão nas inicializações normais.
- Se em alguma caixa o Android voltar a iniciar com o cartão inserido, repita o passo acima.
- Para voltar ao Android, desligue a caixa e retire o cartão.

## 5. O primeiro boot

O primeiro boot de um cartão novo é mais demorado:

1. A partição `EEROMS` é expandida e formatada em exFAT, ocupando o resto do cartão.
2. A partição `STORAGE` é conferida.
3. Os padrões de fábrica são aplicados uma única vez, entre eles a memória comprimida (ZRAM, veja
   [DESEMPENHO.md](DESEMPENHO.md)) e o Bluetooth desligado.
4. Abre o **assistente de primeiro uso** (COMEÇAR), com cinco passos:
   - **IDIOMA**;
   - **CONTROLE**, para testar ou mapear os botões;
   - **REDE (OPCIONAL)**: a Internet não é obrigatória para jogar;
   - **SEUS JOGOS**: onde colocar os arquivos;
   - **configurações opcionais e suporte**.

   O nome do jogador é opcional e aparece na saudação do painel. A confirmação final grava a
   conclusão e fecha o assistente. MAIS TARDE adia o assistente para o próximo início (até três vezes); PULAR ASSISTENTE o encerra de vez. A ajuda permanece em START > AJUDA E SUPORTE > MANUAL.

**Não desligue a caixa** durante o primeiro boot.

### Autorizações e suporte

- **Suporte remoto e identificação no painel** só acontecem em aparelhos cadastrados, com o
  consentimento de quem usa a caixa. O consentimento pode ser revogado.
- O nome do jogador só é enviado ao suporte em aparelho cadastrado e consentido.
- **Downloads da conta** ficam presos à conta e ao aparelho autorizados.

## 6. BIOS, jogos e saves

- **BIOS:** coloque os arquivos de BIOS que você possui na pasta `bios` da área de jogos. Ela fica
  em `roms/bios`, na partição `EEROMS`. A ROM **não inclui BIOS proprietárias**.
- **Jogos:** coloque os jogos nas pastas de cada sistema dentro de `roms`. Há três formas:
  - pelo PC, já que a `EEROMS` é exFAT;
  - por pendrive/disco USB;
  - pela rede local.
- **Saves e estados** ficam no próprio cartão. Antes de trocar ou regravar o cartão:
  - copie a pasta `roms` inteira, que inclui `bios` e `savestates`;
  - e use **SISTEMA E MANUTENÇÃO > BACKUP E RESTAURAÇÃO**.
- Para checar a área de jogos, use **SISTEMA E MANUTENÇÃO > ARMAZENAMENTO E CARTÃO SD > MANUTENÇÃO DO CARTÃO SD > VERIFICAR CARTÃO SD** ou
  **VERIFICAR E REPARAR CARTÃO SD**. Antes, feche jogos, downloads e transferências.

## 7. Atualizar

O caminho recomendado é o atualizador do próprio sistema:

1. Abra **START > ATUALIZAÇÕES & TRANSFERÊNCIAS > ATUALIZAR RETRO ELITE**.
2. O sistema baixa o pacote, confere a integridade e prepara a instalação. Durante esse tempo, a
   lista de jogos fica bloqueada, para nada ser aberto no meio.
3. Ao confirmar, a caixa **reinicia uma vez**. Na volta, aparece a tela de conclusão da atualização,
   que vai até 100 %. Depois disso, o menu abre normalmente.
4. **Não desligue a caixa** durante a atualização e a tela de conclusão.

A atualização preserva configurações, perfis, jogos, saves e dados do suporte dentro do escopo do
atualizador. Kernel, DTB, clocks e ajustes térmicos só mudam quando a própria versão nova traz isso.

O mesmo pacote `.zip` da release é o que o atualizador usa. Prefira sempre o menu.

## 8. Código-fonte e licenças

- A RETRO ELITE 5.1 é baseada no **EmuELEC** e no **CoreELEC/LibreELEC**. Ela usa o kernel Linux e
  muitos projetos de software livre, cada um com sua licença. Os textos das licenças acompanham a
  imagem.
- O aplicativo **Reiniciar Retro Elite** (MIT) vem com o código-fonte na partição `RETROELITE`.
  O aplicativo de terceiros **Reboot to CoreELEC 5.0** (MIT) também vem lá, com sua licença.
- O programa Java próprio que vem na imagem é compilado de fonte pública. O código-fonte e os avisos
  dele acompanham a imagem.
- Drivers de GPU, firmware de vídeo e alguns módulos são binários proprietários do fabricante,
  distribuídos sem modificação.
- **Fontes correspondentes:** o Java JM acompanha suas fontes/patches/receita no próprio componente; o aplicativo de reinício acompanha arquivo de fontes na partição do cartão. O canal específico para as fontes GPL do kernel e demais componentes ainda está em definição durante a revisão privada. Essa informação deverá estar completa antes da abertura pública; não há nesta página uma oferta ou licença presumida.

## O que este guia não faz

- Não ensina a gravar na memória interna (eMMC), trocar bootloader, fazer root ou usar exploit.
- Não garante que toda caixa com nome parecido funcione.
- Não substitui o Android: com o cartão fora, a caixa volta ao sistema de fábrica.
