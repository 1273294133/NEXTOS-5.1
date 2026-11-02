# Atualizações e integridade

## Situação das entregas

A primeira release (`UID20261102070544`) é o espelho dos mesmos arquivos da5.1 já aprovada no canalR2. Ela ainda utiliza o atualizador R2 existente. A implementação que acrescenta GitHub principal, assinatura verificada pela chave pública e reserva R2 está sendo preparada na base privada; esse recurso será identificado na release que efetivamente o incluir.

O repositório permanece privado até a aprovação do proprietário. Não coloque um tokenGitHub nos aparelhos para contornar essa fase. Publicar uma release dentro de um repositório privado não torna seus arquivos acessíveis a clientes anônimos.

## Como atualizar uma instalação compatível

Use o atualizador da própria ROM. Ele confere família, plataforma, UID, tamanho e hashes do pacote, prepara a instalação, reinicia quando a atualização é confirmada e conclui a aplicação. Preserve jogos, saves e configurações e mantenha uma cópia de segurança dos dados importantes antes de uma atualização de sistema.

A imagem `.img.gz` é para gravar no cartão; o arquivo `-update.zip` é para o caminho de atualização. Não renomeie um arquivo para tentar transformá-lo no outro e não use os arquivos automáticos Source code do GitHub como atualização.

## Dois provedores, a mesma entrega

O cliente com suporte aos dois provedores deve buscar o manifesto do GitHub e usar o R2 se a origem não estiver disponível. O pacote recebido de qualquer origem precisa corresponder ao mesmo UID, release, fonte, tamanho e hashes. Não há combinação de partes de versões diferentes nem downgrade automático. O canal R2 já existente permanece preservado durante a preparação.

## Assinaturas

Manifestos novos são assinados com Ed25519. A chave de confiança pública é [update-signing.pub](../keys/update-signing.pub); a chave privada de assinatura e a autenticação do publicador não são distribuídas. O campo key_id identifica o SHA256 da chave pública DER SubjectPublicKeyInfo.

`SHA256SUMS` permite conferir corrupção de arquivos. `SHA256SUMS.sig` assina essa lista. A assinatura só estabelece confiança quando a chave usada para verificar é a chave legítima esperada; uma chave fornecida por uma origem comprometida não cria confiança por si só.

Os clientes da primeira ROM desta página ainda não verificam o novo protocoloGitHub+assinatura automaticamente. Os arquivos assinados preparam a distribuição; a release correspondente ao cliente novo indicará a mudança.
