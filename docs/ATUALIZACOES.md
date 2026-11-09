# Atualizações e integridade

## Situação das entregas

A entrega **r186, UID 20261108232402**, preserva GitHub principal, R2 de reserva por HTTPS e assinatura Ed25519, sem credencial S3 permanente embarcada. Fonte `565e5c5a68c5c91eeb4a42c80f35a210bc3430ca`.

A imagem única inclui D905, TX9, X2, Aquário, Y7 e HK1 RBOX X4S 2 GB/SC2. O manifesto assinado publica exclusivamente o pacote nativo completo de 25 arquivos (`Nextos-5.1-20261108232402-update.zip`, formato `flat25` com SC2 normalizado em `files`, sem `representations`). Clientes modernos (`r178` segunda build até atuais) aplicam o pacote pelo canal usando o helper autenticado empacotado, com transação em 2 GiB (`SYSTEM` residente no armazenamento e base intacta no `BOOT`). Clientes antigos (`r170` até primeira `r178`) recusam de forma segura antes de tocar o `BOOT` e podem usar o lançador manual do pacote quando aplicável.

A r186 foi gerada pelo build padrão e aprovada após validação física no Aquário e no TX9, testes automatizados de saves/DraStic e verificação dos contratos de clientes históricos no PC. As novidades completas e limites de validação estão no [Histórico](HISTORICO.md).

Releases retiradas e candidatas antigas não voltam a ser recomendadas; para instalações compatíveis, use o atualizador normal ou o ZIP legado pelo menu local, sem restaurar credenciais antigas. O GitHub é acessado sem conta/token GitHub; a reserva HTTPS entrega os mesmos bytes assinados.

## NEXTOS Exclusivos: vitrine e acesso à loja

O menu da conta permanece aberto depois de entrar. **VER JOGOS EXISTENTES** é a vitrine de consulta, somente de leitura, disponível também sem entrar na conta. Com acesso ativo, escolha **ACESSAR NEXTOS EXCLUSIVOS** para abrir a lista real de jogos e ports e iniciar os downloads autorizados. Essa opção consulta novamente a situação da conta antes de continuar.

Na raiz da loja, as categorias com jogos aparecem primeiro: **Ports, GameCube, Wii, família PlayStation, Xbox e Nintendo 3DS**. Outras categorias com conteúdo vêm em seguida; as vazias ficam no fim. A ordenação dos jogos dentro de cada categoria e os filtros pessoais são preservados. **LEMBRAR ACESSO** mostra o estado real da opção e conserva somente a sessão escolhida, sem guardar a senha.

O catálogo online acompanha novas publicações compatíveis e autorizadas no serviço: após atualizar a lista, os títulos passam a aparecer sem trocar a ROM nem editar uma lista manual no aparelho. Isso se limita aos sistemas, formatos e caminhos suportados. Jogos e ports privados continuam exigindo conta ativa e autorização do servidor; a vitrine não libera seus arquivos.

## Compatibilidade incorporada na r183

A imagem traz DTBs individuais GXL de1GB e2GB conferidos por hash. A atualização preserva o perfil individual selecionado, ou o contêiner quando esse já é o formato do cartão. A admissão dos nomes considera a FAT e protege arquivos reservados. A recuperação e a confirmação usam os arquivos registrados na própria transação; backups anteriores são preservados.

## Como atualizar uma instalação compatível

Use o atualizador da própria ROM. Ele confere família, plataforma, UID, tamanho e hashes do pacote, prepara a instalação, reinicia quando a atualização é confirmada e conclui a aplicação. Mantenha uma cópia de segurança dos dados importantes antes de atualizar o sistema.

A imagem `.img.gz` é para gravar no cartão; o arquivo `-update.zip` é para a atualização nativa. Não renomeie um arquivo para tentar transformá-lo no outro. Os arquivos automáticos **Source code** do GitHub contêm a documentação deste repositório e não instalam a ROM.

## Dois provedores, a mesma entrega

O cliente busca o manifesto do GitHub e usa o R2 quando a origem principal não está disponível. A consulta de metadados tem prazo e tamanho limitados. O pacote recebido de qualquer origem precisa corresponder ao mesmo UID, release, fonte, tamanho e hashes. Os downloads grandes mantêm acompanhamento e cancelamento.

Não há combinação de partes de versões diferentes nem downgrade automático. A reinstalação permanece uma escolha explícita. O canal R2 continua disponível como reserva; o canal de testes e o canal antigo são separados.

## Assinaturas

Os manifestos desta entrega são assinados com Ed25519. A chave de confiança pública é [update-signing.pub](../keys/update-signing.pub); a chave privada e as credenciais de publicação ficam fora da ROM e deste repositório. O campo `key_id` identifica o SHA256 da chave pública DER SubjectPublicKeyInfo.

`SHA256SUMS` permite conferir corrupção nos arquivos baixados. `SHA256SUMS.sig` assina essa lista. A assinatura estabelece confiança quando a chave usada para verificar é a chave legítima esperada; receber uma chave de uma origem comprometida não cria confiança por si só.

O cliente novo exige o manifesto assinado. O cliente da primeira entrega espelhada não verificava esse protocolo automaticamente; por isso a versão de cada release importa.

## Instalações antigas

Esta migração é da série 5.1. Os serviços e o acesso legado dos aparelhos 5.0 são preservados; retirar a chave da imagem nova não desativa a identidade usada pelas instalações antigas.

## Recursos por HTTPS

Catálogos, capas, recursos públicos e configurações padrão usam um serviço HTTPS que permite apenas as operações, caminhos e formatos previstos. A ROM não recebe uma credencial S3 para listar ou ler livremente o armazenamento. As configurações padrão são produzidas a partir dos arquivos de fábrica, sem exportar contas ou dados de um aparelho utilizado.

Os pacotes privados continuam separados e dependem da autorização do serviço de contas. A chave privada de assinatura, credenciais administrativas, senhas do operador e códigos de recuperação ficam fora da distribuição. A chave pública de assinatura é distribuída intencionalmente para verificar os arquivos.
