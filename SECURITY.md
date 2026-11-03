# Segurança da distribuição

A entrega UID20261103010444 não embarca a credencial S3/R2 antiga, token de publicação GitHub, chave privada de assinatura, senha administrativa ou códigos de recuperação. A imagem é produzida a partir dos arquivos de fábrica e passa por verificação de credenciais durante o build.

O atualizador usa GitHub como origem principal e R2 por HTTPS como reserva. Manifestos assinados com Ed25519 são conferidos pela chave pública fixada; UID, família, plataforma, tamanho e hashes do pacote também são validados. A chave pública acompanha a ROM para permitir a verificação; a chave privada permanece com o publicador.

O serviço de recursos permite somente caminhos, formatos e operações previstos. Downloads privados continuam no serviço autenticado de contas, em armazenamento separado. Não copie pacotes privados para recursos públicos para contornar essa proteção.

As duas Releases anteriores foram retiradas; seus binários não são downloads recomendados. Os registros de integridade preservados no histórico não equivalem à disponibilidade desses arquivos.

Não publique senhas, tokens, chaves privadas, códigos de suporte ou arquivos de contas em issues. Para um incidente com dados sensíveis, utilize o atendimento oficial e compartilhe somente os detalhes necessários. Uma imagem de cartão já utilizado pode conter dados pessoais e não deve ser anexada a um relato público.
