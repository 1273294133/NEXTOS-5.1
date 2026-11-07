NextOS 5.1 r185 — UID **20261107155210**

Atualização cumulativa com recuperação segura de boot e de falhas comprovadas de metadados exFAT, progresso discreto e preservação de jogos, saves e configurações. Listas de jogos e favoritos usam gravação atômica, backup e recuperação após interrupções.

A imagem única inclui D905, TX9, X2, Aquário, Y7 e o perfil HK1 RBOX X4S 2 GB/SC2. A r185 passou pela atualização nativa e pelo retorno ao boot normal em D905 e Aquário. As provas anteriores do HK1 2 GB foram preservadas na integração; não há certificação física do modelo de 4 GB.

Arquivos:
- `.img.gz`: imagem virgem para instalação em cartão, sem jogos.
- `-update.zip`: transporte legado17 para os clientes anteriores.
- `-unified-update.zip`: transporte compatível19 escolhido pelo atualizador assinado existente.
- `-sc2-update.zip`: pacote nativo completo25, incluindo SC2; aplicação pelo fluxo nativo compatível. Não substituir manualmente o pacote selecionado por um cliente antigo.
- `SHA256SUMS`, `SHA256SUMS.sig` e `update-signing.pub`: integridade e assinatura Ed25519.

Os três transportes contêm o mesmo SYSTEM, UID e fonte. Os contratos r170–r180 foram verificados no PC com o BOOT final; a publicação reaproveita essas provas e a validação física já concluída. O canal mantém GitHub principal e HTTPS/R2 como reserva, sem credencial S3 permanente na ROM.

Fonte: `faa13061a7640fa97a4a94688dc3152d8c794a37`.
SYSTEM SHA-256: `82d03aaa16373e12e580f14447961643a25832fcd78a33f279d0302aa24803fb`.
