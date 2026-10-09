Algoritmo "SistemaDeProdutos"
// ==========================================
// Equivalência Lógica das Estruturas de Dados
// ==========================================
Var
   // Como não há "Listas Dinâmicas", usamos Vetores de tamanho fixo (ex: 3)
   nomes: vetor[1..3] de caractere
   precos: vetor[1..3] de real
   categorias: vetor[1..3] de caractere
   
   // Variáveis auxiliares para o Laço e Filtro
   i, j: inteiro
   valor_filtro: real
   
   // Variáveis para Ordenação (Bubble Sort)
   aux_nome, aux_categoria: caractere
   aux_preco: real
   
   // Variáveis para simular o Conjunto (Set)
   categorias_unicas: vetor[1..3] de caractere
   qtd_unicas: inteiro
   repetido: logico
   
   // Variáveis para simular a Tupla de Estatísticas
   menor, maior, soma, media: real

Inicio
   // ----------------------------------------
   // 1. CADASTRO DE PRODUTOS
   // ----------------------------------------
   Escreval("--- CADASTRO DE PRODUTOS ---")
   Para i de 1 ate 3 faca
      Escreval("Produto ", i, ":")
      Escreva("Nome: ")
      Leia(nomes[i])
      Escreva("Preço: ")
      Leia(precos[i])
      Escreva("Categoria: ")
      Leia(categorias[i])
   FimPara
   
   // ----------------------------------------
   // 2. FILTRAGEM POR PREÇO
   // ----------------------------------------
   Escreval("")
   Escreva("Mostrar produtos acima de qual valor? ")
   Leia(valor_filtro)
   
   Escreval("Produtos que custam mais que ", valor_filtro, ":")
   Para i de 1 ate 3 faca
      Se (precos[i] > valor_filtro) Entao
         Escreval("- ", nomes[i], " (R$ ", precos[i], ")")
      FimSe
   FimPara
   
   // ----------------------------------------
   // 3. ORDENAÇÃO CRESCENTE (BUBBLE SORT)
   // Substitui o sort() do Python
   // ----------------------------------------
   // Compara um elemento com o próximo e troca se estiver fora de ordem
   Para i de 1 ate 2 faca
      Para j de i+1 ate 3 faca
         Se (precos[i] > precos[j]) Entao
            // Troca os preços
            aux_preco <- precos[i]
            precos[i] <- precos[j]
            precos[j] <- aux_preco
            
            // Troca os nomes (para não misturar o preço de um com o nome do outro)
            aux_nome <- nomes[i]
            nomes[i] <- nomes[j]
            nomes[j] <- aux_nome
            
            // Troca categorias
            aux_categoria <- categorias[i]
            categorias[i] <- categorias[j]
            categorias[j] <- aux_categoria
         FimSe
      FimPara
   FimPara
   
   // ----------------------------------------
   // 4. SIMULAÇÃO DE SET() - Categorias Únicas
   // ----------------------------------------
   qtd_unicas <- 0
   Para i de 1 ate 3 faca
      repetido <- falso
      
      // Verifica se a categoria já está no nosso vetor de únicas
      Para j de 1 ate qtd_unicas faca
         Se (categorias[i] = categorias_unicas[j]) Entao
            repetido <- verdadeiro
         FimSe
      FimPara
      
      // Se não for repetido, adicionamos!
      Se (repetido = falso) Entao
         qtd_unicas <- qtd_unicas + 1
         categorias_unicas[qtd_unicas] <- categorias[i]
      FimSe
   FimPara
   
   // ----------------------------------------
   // 5. SIMULAÇÃO DA TUPLA (Estatísticas)
   // ----------------------------------------
   menor <- precos[1]
   maior <- precos[1]
   soma <- 0
   
   Para i de 1 ate 3 faca
      Se (precos[i] < menor) Entao
         menor <- precos[i]
      FimSe
      Se (precos[i] > maior) Entao
         maior <- precos[i]
      FimSe
      soma <- soma + precos[i]
   FimPara
   media <- soma / 3
   
   // ----------------------------------------
   // 6. RELATÓRIO FINAL
   // ----------------------------------------
   Escreval("")
   Escreval("========================================")
   Escreval("          RELATORIO FINAL")
   Escreval("========================================")
   Escreval("PRECOS ORDENADOS (Crescente):")
   Para i de 1 ate 3 faca
      Escreval("  - ", nomes[i], ": R$ ", precos[i])
   FimPara
   
   Escreval("")
   Escreval("CATEGORIAS UNICAS:")
   Para i de 1 ate qtd_unicas faca
      Escreval("  - ", categorias_unicas[i])
   FimPara
   
   Escreval("")
   Escreval("ESTATISTICAS:")
   Escreval("  - Mais barato: R$ ", menor)
   Escreval("  - Mais caro: R$ ", maior)
   Escreval("  - Media: R$ ", media)
   Escreval("========================================")
Fimalgoritmo