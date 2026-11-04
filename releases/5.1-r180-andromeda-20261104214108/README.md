NEXTOS 5.1 r180 — Andromeda

Atualização cumulativa · UID **20261104214108** · Linux **5.15.223**.

- PortMaster: recuperação automática do arquivo de abertura após a atualização própria, preservando a versão instalada e os dados.
- Jogo aleatório global e por sistema, incluindo subpastas, com shuffle e filtros para itens identificados como BIOS, utilitários e não funcionais.
- Notas da versão visíveis antes de confirmar a atualização, com versão pública, data e codinome.
- Configuração inicial por NEXTOS-SETUP.txt no cartão: Wi-Fi, idioma, fuso e nome do jogador; política de SSH preservada.
- Progresso dos jogos com estados Jogando, Zerado e Abandonado, escolha manual e coleções automáticas.
- Recuperação segura das permissões SSH observadas em cartões antigos, mantendo a identidade administrativa e sem acesso por senha.
- Uma imagem para os cinco perfis suportados, com kernel 5.15.223 e os caminhos de atualização compatíveis preservados.

Uma imagem para D905, TX9, X2, Aquário e Y7. O SSH continua restrito à chave administrativa autorizada; a recuperação corrige permissões de fábrica reconhecidas, preservando identidades rotacionadas. O suporte por código mantém as correções de prontidão das versões anteriores.

**Arquivos:** `.img.gz` para instalação em cartão; `-update.zip` para clientes legados; `-unified-update.zip` para o cliente novo. Os dois ZIPs contêm o mesmo SYSTEM/UID e são vinculados pelo manifesto assinado. Jogos e coleções pessoais não acompanham a imagem.

Validação: compilação padrão da ROM, conferência do sistema empacotado, contrato do atualizador, assinatura e provas dos componentes alterados. Esta revisão não alega nova rodada de boot físico nos cinco modelos.
