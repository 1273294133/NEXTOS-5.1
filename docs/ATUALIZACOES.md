# Atualizações e integridade

## Situação das entregas

A entrega **UID 20261102145554** inclui o cliente com **GitHub como origem principal e R2 como reserva**, manifesto Ed25519 verificado pela chave pública fixada e conferência da identidade do pacote. A imagem e o update foram gerados pelo build normal. A atualização nativa foi concluída no TX9 e no Aquário, preservando os dados e as configurações verificados. Nos dois aparelhos, o cliente instalado também consultou o manifesto assinado pela reserva R2.

A primeira release deste repositório, UID 20261102070544, fica preservada no histórico e mantém o cliente R2 anterior. Instalações dessa entrega podem receber o novo pacote pelo canal nativo compatível.

O repositório permanece **privado até a aprovação do proprietário**. Não coloque um token GitHub nos aparelhos para contornar essa fase. Enquanto estiver privado, o cliente anônimo não acessa os arquivos do GitHub e utiliza a reserva R2. O acesso anônimo bem-sucedido pelo GitHub depende da futura abertura do repositório.

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
