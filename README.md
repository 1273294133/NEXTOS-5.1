<p align="center"><img src="assets/Nextos-5.1-cover.svg" alt="NEXTOS 5.1 Andromeda" width="100%"></p>

<p align="center"><strong>Desempenho renovado. Fluidez no menu. Uma base técnica que evoluiu.</strong></p>
<p align="center"><a href="https://github.com/NextOs-Ports/NEXTOS-5.1/releases">ROM e atualizações</a> · <a href="docs/RECURSOS.md">Todos os recursos</a> · <a href="docs/DISPOSITIVOS.md">Dispositivos</a> · <a href="docs/INSTALACAO.md">Instalação</a> · <a href="docs/ATUALIZACOES.md">Como atualizar</a></p>

# NEXTOS 5.1

**Desempenho, fluidez e uma base de sistema modernizada para os aparelhos suportados.** A5.1 reúne Linux5.15.223, aceleração Mali-450 nos perfisGXL, evolução do frontend, memória comprimida com ZRAM, novas opções de áudio e atualização cumulativa com integridade de pacotes. O trabalho inclui desenvolvimento próprio, atualização de componentes e integração orientada ao hardware.

> **Revisão privada do lançamento.** Este repositório está privado por escolha do proprietário enquanto a apresentação e a documentação são aprovadas. A distribuição R2 existente está preservada. A ROM e o primeiro pacote de atualização ficam na aba **Releases**.

| Identidade | Edição5.1 |
|---|---|
| Nome da edição | **Nextos** |
| Arquitetura | **AArch64** |
| Família da imagem | **Amlogic-nx · GXL/S4** |
| Kernel Linux | **5.15.223** |
| Primeira entrega neste repositório | `r175-andromeda · UID20261102070544` |
| Instalação nova | Imagem `.img.gz` para cartão |
| Atualização de instalação compatível | Pacote nativo `-update.zip` |
| Acesso a este repositório | Documentação e binários de distribuição; sem código da ROM |

**5.1 é a versão da Retro Elite; 5.15.223 é a versão do kernel Linux.** A compatibilidade depende de SoC, placa, memória, DTB e periféricos reais. O nome comercial de uma box, sozinho, não determina compatibilidade.

## Imagem virgem, conteúdo escolhido por você

**A ROM é distribuída virgem, sem os jogos e as coleções das nossas bancadas.** Ela inclui o sistema, os emuladores e as ferramentas. Os sistemas de jogo ficam visíveis conforme você adiciona conteúdo compatível. As capturas da interface e dos ports ilustram usos com arquivos adicionados pelo usuário; esses jogos e bibliotecas não acompanham a imagem.

## Os pilares técnicos da5.1

| Pilar | O que muda na experiência |
|---|---|
| **Kernel Linux5.15.223** | Base vendor adaptada aos perfisGXL/S4, preservando os drivers e as características do hardware suportado. |
| **Mali-450 acelerado** | Mali/libMali e framebuffer/fbdev com OpenGL ES2.0 por hardware na linhaGXL. |
| **systemd262.1 e pacotes renovados** | glibc2.44, Python3.15.0, GCC16.2.0, binutils2.47 e as bibliotecas/emuladores com versões identificadas. [Inventário de pacotes](docs/PACOTES.md). |
| **Fluidez do frontend** | Trabalho no uso de memória, carregamento de arte, navegação e caches. Em uma comparação TX9, o menu principal passou de705,41 para63,20ms até a primeira mudança visual. |
| **Bibliotecas grandes** | Na medição do TX9, a listagem de pastas tratadas como jogo caiu de18,9 para4,6s; os dados e o método estão no guia de desempenho. |
| **ZRAM por perfil** | Memória comprimida com perfis para as placas de1GB/2GB, limites definidos e controle pelo menu. |
| **ALSA, PulseAudio e PipeWire** | Acesso ao hardware, gerenciamento/mistura de áudio e opção de servidor; cada camada tem sua função. |
| **Atualizações e recuperação** | Pacotes cumulativos, identidade/UID/hashes, preservação de dados e novo cliente assinado com GitHub principal/R2 de reserva na entrega correspondente. |

Os números acima são medições específicas, com aparelho, versão e método descritos em [Desempenho](docs/DESEMPENHO.md). Não representam um ganho universal de FPS.

## O salto técnico do Mali-450

**Aceleração gráfica por hardware com Mali-450 e Linux5.15.223.** A linhaGXL usa o driver Mali/libMali do fabricante e a rota framebuffer/fbdev para oferecer OpenGL ES2.0 acelerado à interface e aos emuladores e ports compatíveis. Essa integração é um dos marcos técnicos da5.1 e inclui os perfis de memória das placasGXL suportadas.

A [matriz de dispositivos](docs/DISPOSITIVOS.md) identifica as placas e os testes que sustentam a compatibilidade. O guia de [desempenho](docs/DESEMPENHO.md) apresenta os resultados medidos e o contexto de cada melhoria.

## Saturn no TX9 e uma pilha de áudio completa

**Saturn no TX9 é um dos destaques desta edição.** A experiência de uso foi aprovada no projeto e reúne as opções de Saturn, configurações por jogo, controles e melhorias de compatibilidade da linha5.1. Veja as opções em [Emuladores, cores e ports](docs/RECURSOS.md#4-emuladores-cores-e-ports).

O áudio reúne **ALSA, PulseAudio e a opção PipeWire**. A base de acesso ao hardware, o gerenciamento/mistura de áudio e as opções de servidor têm papéis próprios. A seleção de saída USB e o retorno à saída anterior foram aprovados na experiência real do projeto. O guia de [áudio](docs/RECURSOS.md#8-áudio) descreve os controles, as preferências e o modo opcional do PipeWire.

## Comece por aqui

1. Confira [a matriz de dispositivos](docs/DISPOSITIVOS.md).
2. Baixe a [ROM ou atualização correta em Releases](https://github.com/NextOs-Ports/NEXTOS-5.1/releases).
3. Siga [a instalação em cartão](docs/INSTALACAO.md) ou [a atualização nativa](docs/ATUALIZACOES.md).
4. Explore [as novidades e os recursos próprios](docs/RECURSOS.md).
5. Consulte [memória, ZRAM, boot e desempenho](docs/DESEMPENHO.md) e [as dúvidas frequentes](docs/FAQ.md).

## Interface em resolução nativa

<p align="center"><a href="assets/gallery/Nextos-5.1-interface-tema-720p.png"><img src="assets/gallery/Nextos-5.1-interface-tema-720p.png" alt="Tema em captura nativa1280x720, exemplo com conteúdo do usuário" width="100%"></a></p>

*Captura real1280×720. Os sistemas visíveis neste exemplo decorrem dos jogos do usuário e não acompanham a ROM virgem.*

[Ver a galeria](docs/GALERIA.md) · [Memória e ZRAM](docs/DESEMPENHO.md) · [Versões dos pacotes](docs/PACOTES.md)

## Recursos e experiência de uso

### Primeira configuração e perfil

O assistente de cinco passos permite informar o nome do jogador e concluir a preparação do sistema. A confirmação final fecha o assistente por completo. O teclado virtual também recebeu a correção do evento de liberação de Esc, que fechava o editor assim que ele era aberto em certas configurações de controle.

### O nome do jogador percorre a experiência

O mesmo nome pode ser editado em **Tela e aparência → Meu perfil → Nome do jogador**, aparece na saudação e identifica os dispositivos cadastrados no suporte autorizado. A restauração ou remoção do nome se propaga ao painel. Isso não altera identidade técnica, conta, chave de instalação nem autorização de suporte.

### Java e reinicialização para cartão

O Java JM padrão é compilado de fonte pública, com controles, entrada, migração e bibliotecas revisados. Os avisos e a fonte correspondente acompanham o componente. O aplicativo próprio **Reiniciar Retro Elite1.2** solicita a reinicialização para cartão quando os privilégios do Android permitem; o APK CoreELEC5.0 mantém sua identidade e seus avisos.

### Atualização, manutenção e preservação dos dados

A entrega inclui a criação/verificação do STORAGE, recuperação e correções de boot, atualização cumulativa nativa e preservação das configurações verificadas. A recuperação Bluetooth S4 protege armazenamento em uso e limita tentativas de reset.

A descrição completa por áreas está em [Recursos](docs/RECURSOS.md), com 20 áreas de uso e implementação. Os textos de dispositivos e desempenho vinculam cada afirmação à implementação e às provas disponíveis.

## ROM e update: qual baixar?

| Arquivo da release | Finalidade |
|---|---|
| `Retro-Elite-5.1-… .img.gz` | Instalação em cartão. A gravação apaga o conteúdo do cartão selecionado. |
| `Retro-Elite-5.1-…-update.zip` | Atualização nativa de uma instalação compatível. |
| `SHA256SUMS` | Conferência dos arquivos baixados. |
| `SHA256SUMS.sig` e `update-signing.pub` | Assinatura Ed25519 e chave pública de distribuição. |
| `manifest.json` e `release.json` | Versão, UID, tamanho, hashes e identidade da entrega. |

**Os downloads automáticos “Source code” do GitHub são apenas os arquivos de documentação deste repositório. Eles não são a imagem da ROM nem o update.**

## Distribuição e segurança

Os arquivos da primeira release mantêm exatamente os bytes da entrega já aprovada. O repositório é independente do desenvolvimento privado: nenhum histórico de código da ROM foi importado para cá.

A integração em preparação usa **GitHub como origem principal e R2 como reserva**, com manifesto assinado e identidade imutável do pacote. A chave privada de assinatura e as credenciais de publicação ficam fora da ROM e deste repositório; somente a chave pública é distribuída. Enquanto o repositório estiver privado, o cliente anônimo não terá acesso aos arquivos do GitHub e deverá usar a reserva R2. Consulte [Atualizações](docs/ATUALIZACOES.md) para o estado de cada entrega.

## Exemplos de ports do ecossistema

**Os jogos das imagens não acompanham a ROM virgem.** São capturas reais do acervo, sem logos ou molduras Retro Elite. Datas e versões estão na [galeria](docs/GALERIA.md).

| Crash Twinsanity | Spider-Man Unlimited |
|---|---|
| [![Crash Twinsanity](assets/gallery/Nextos-port-1-crash-twinsanity-nextos-20261031.png)](assets/gallery/Nextos-port-1-crash-twinsanity-nextos-20261031.png) | [![Spider-Man Unlimited](assets/gallery/Nextos-port-2-spider-man-unlimited-nextos-r051-20261030.png)](assets/gallery/Nextos-port-2-spider-man-unlimited-nextos-r051-20261030.png) |

| Celeste | Chasm |
|---|---|
| [![Celeste](assets/gallery/Nextos-port-3-celeste-nextos-5.0-20261019.png)](assets/gallery/Nextos-port-3-celeste-nextos-5.0-20261019.png) | [![Chasm](assets/gallery/Nextos-port-4-chasm-nextos-5.0-20261019.png)](assets/gallery/Nextos-port-4-chasm-nextos-5.0-20261019.png) |

## Compatibilidade e limites que importam

- TX9 e Aquário passaram na atualização física da entrega inicial desta página. D905 e X2 mantêm os alcances de suas aprovações anteriores.
- No Aquário, o host USB CRG pode interferir no Bluetooth quando um controle USB low-speed está sendo lido. O alcance depende da combinação de periféricos.
- O APK não concede privilégios que o Android não oferece. Acesso root ou autorização compatível podem ser necessários.
- Ganhos de boot, RAM e desempenho são apresentados com seu contexto; não representam um ganho universal de FPS.
- As licenças de terceiros continuam aplicáveis. A documentação específica do blob VPU permanece uma questão separada para revisão antes da abertura pública.

## Documentação

| Guia | Conteúdo |
|---|---|
| [Recursos](docs/RECURSOS.md) | Novidades, menus e recursos próprios |
| [Dispositivos](docs/DISPOSITIVOS.md) | Famílias, SoCs, placas, memória e alcance de suporte |
| [Pacotes e versões](docs/PACOTES.md) | systemd, ferramentas, bibliotecas e emuladores por release |
| [Galeria](docs/GALERIA.md) | Capturas reais em resolução nativa |
| [Desempenho](docs/DESEMPENHO.md) | Boot, RAM, ZRAM, fluidez e medições com contexto |
| [Instalação](docs/INSTALACAO.md) | Cartão, DTB, primeiro boot e APK |
| [Atualizações](docs/ATUALIZACOES.md) | Releases, assinatura, GitHub, R2 e recuperação |
| [Histórico](docs/HISTORICO.md) | Evolução cumulativa da5.1 |
| [FAQ](docs/FAQ.md) | Dúvidas do uso diário |
| [Créditos e licenças](docs/CREDITOS-E-LICENCAS.md) | Base, autores, componentes e avisos |

## Comunidade e relato de problemas

Ao relatar um problema, informe versão/UID, SoC e memória, modelo da placa quando conhecido, tipo de cartão e passos para reproduzir. Não publique senhas, tokens, chaves, códigos de suporte, arquivos completos de contas ou imagens do seu cartão com dados pessoais.

A Retro Elite utiliza e reconhece o trabalho do projeto **EmuELEC** e de diversos autores upstream. Desenvolvimento próprio e integrações são identificados na documentação; o crédito de um componente continua sendo de seus autores.
