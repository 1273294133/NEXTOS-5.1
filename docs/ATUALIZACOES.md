# Atualizações e integridade

## Situação das entregas

A entrega **UID 20261102221950** usa **GitHub como origem principal e R2 como reserva por HTTPS**, sem credencial S3 permanente embarcada. O manifesto Ed25519 é conferido pela chave pública fixada; tamanho, hashes e identidade do pacote também são obrigatórios.

A imagem e o update foram gerados pelo build padrão. A atualização nativa concluiu no TX9 e no Aquário, incluindo boot, finalizador a 100% e preservação dos dados e configurações verificados. Nos dois aparelhos, o cliente instalado consultou o manifesto assinado pela reserva HTTPS sem usar a configuração S3 antiga.

As Releases UID 20261102070544 e UID 20261102145554 foram retiradas. Seus registros de integridade permanecem como histórico. Para uma instalação antiga, use a atualização nativa compatível ou o ZIP atual pelo menu de atualização local; não é necessário restaurar a chave antiga.

Os aparelhos acessam o GitHub sem conta ou token GitHub. Se a origem principal estiver indisponível, o cliente utiliza a reserva HTTPS para a mesma entrega assinada.

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
