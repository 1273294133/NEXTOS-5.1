# Segurança da distribuição

A ROM não contém o token de publicação GitHub nem a chave privada de assinatura. O cliente incluído na entrega UID20261102145554 usa GitHub público como origem principal e R2 como reserva, com manifesto Ed25519 e verificação de identidade/integridade do pacote. A primeira entrega histórica UID20261102070544 conserva o cliente R2 anterior.

A identidade R2 embarcada foi mantida deliberadamente para leitura do acervo histórico e dos recursos compartilhados, como updates, capas e configurações padrão. Sua política documentada é Object Read no bucket legado; a credencial de escrita do operador é separada. A revisão anterior registrou escrita/exclusão negadas. Na conferência de 02/11/2026, a identidade da ROM passou no verificador aprovado e as tentativas de listar/ler o bucket separado dos novos pacotes privados retornaram403. A leitura de um arquivo legado não equivale a autorizar novos downloads privados.

Os novos pacotes privados são entregues pelo serviço autenticado de contas e não devem ser copiados para o armazenamento legado para contornar essa proteção. A preservação dos downloads antigos é intencional.

Não publique senhas, tokens, chaves privadas, códigos de suporte ou arquivos de contas em issues. Para um incidente com dados sensíveis, utilize o atendimento oficial e compartilhe somente os detalhes necessários. Uma imagem de cartão já utilizado pode conter dados pessoais; ela não deve ser anexada a um relato público.
