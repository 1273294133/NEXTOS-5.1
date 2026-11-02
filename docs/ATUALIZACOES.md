# Atualizações e integridade

## Situação das entregas

**Migração em andamento:** as duas Releases anteriores do GitHub foram retiradas. A próxima substituirá o acesso S3 embarcado por HTTPS. Durante essa integração, o repositório voltou a privado e o R2 existente permanece disponível. Os detalhes abaixo descrevem a entrega anterior já validada.


A entrega **UID 20261102145554** inclui o cliente com **GitHub como origem principal e R2 como reserva**, manifesto Ed25519 verificado pela chave pública fixada e conferência da identidade do pacote. A imagem e o update foram gerados pelo build normal. A atualização nativa foi concluída no TX9 e no Aquário, preservando os dados e as configurações verificados. Nos dois aparelhos, o cliente instalado também consultou o manifesto assinado pela reserva R2.

A primeira release deste repositório, UID 20261102070544, fica preservada no histórico e mantém o cliente R2 anterior. Instalações dessa entrega podem receber o novo pacote pelo canal nativo compatível.

Após a migração, a nova distribuição pública retomará as Releases. Os aparelhos acessam o GitHub sem conta ou token GitHub. Se a origem principal estiver indisponível, o cliente utiliza a reserva R2 para a mesma entrega assinada. A validação anterior à abertura pública também comprovou esse fallback no TX9 e no Aquário.

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

## Leitura do R2 legado

A configuração embarcada mantém a identidade de leitura revisada do acervo histórico, usada também por atualizações, capas e configurações padrão. Ela é separada da credencial de escrita do operador. Os novos pacotes privados ficam em armazenamento separado, exigem autorização do serviço de contas e não são liberados por essa identidade legada. Nenhuma chave de assinatura privada ou credencial de publicação GitHub acompanha a ROM.
