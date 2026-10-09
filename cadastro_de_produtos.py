# ==========================================
# SISTEMA DE PRODUTOS - VERSÃO PYTHON
# ==========================================

# 1. CADASTRO DE PRODUTOS (Uso de Listas - Mutáveis e Ordenadas)
# Criei uma lista vazia para guardar todos os produtos. 
lista_produtos = []

print("--- CADASTRO DE PRODUTOS ---")
# Cadastrei 3 produtos para testar

for i in range(3):
    print(f"\nProduto {i + 1}:")
    nome_produto = input("Nome do produto: ")
    preco_produto = float(input("Preço do produto: R$ "))
    categoria_produto = input("Categoria do produto: ")
    
    # Juntamos as informações em uma pequena lista e adicionamos (append) à lista principal
    produto_atual = [nome_produto, preco_produto, categoria_produto]
    lista_produtos.append(produto_atual)

# ==========================================
# 2. FILTRAGEM POR PREÇO
# ==========================================
print("\n--- FILTRAGEM DE PREÇO ---")
valor_filtro = float(input("Mostrar produtos que custam acima de qual valor? R$ "))

print(f"\nProdutos que custam mais de R$ {valor_filtro:.2f}:")
for produto in lista_produtos:
    # produto[1] é o preço (índice 0 é nome, 1 é preço, 2 é categoria)
    if produto[1] > valor_filtro:
        print(f"- {produto[0]} (R$ {produto[1]:.2f})")

# ==========================================
# 3. ORDENAÇÃO
# ==========================================
# Como nossa lista tem [nome, preco, categoria], precisamos ensinar o Python 
# a olhar apenas para o preço (índice 1) na hora de ordenar.
def pegar_preco(produto):
    return produto[1]

# Cópia para não bagunçar a lista original na primeira exibição
produtos_crescente = lista_produtos.copy()
# sort() modifica a lista na qual é chamado
produtos_crescente.sort(key=pegar_preco) 

# sorted() cria uma NOVA lista ordenada, e o reverse=True faz ser decrescente
produtos_decrescente = sorted(lista_produtos, key=pegar_preco, reverse=True)

# ==========================================
# 4. CONJUNTO DE CATEGORIAS ÚNICAS (Uso de Set)
# ==========================================
# Sets (conjuntos) não aceitam itens repetidos!
categorias_unicas = set()

for produto in lista_produtos:
    categoria = produto[2] # Índice 2 é a categoria
    categorias_unicas.add(categoria) # Se já existir, o set ignora automaticamente!

# ==========================================
# 5. TUPLA DE ESTATÍSTICAS (Uso de Tupla - Imutável)
# ==========================================
# Primeiro, isolamos todos os preços em uma lista simples
lista_precos = []
for produto in lista_produtos:
    lista_precos.append(produto[1])

# Agora calculamos as estatísticas
menor_preco = min(lista_precos)
maior_preco = max(lista_precos)
media_preco = sum(lista_precos) / len(lista_precos)

# Criamos uma tupla (usando parênteses). 
# Tuplas são boas para dados que NÃO podem ser alterados depois de criados.
estatisticas_precos = (menor_preco, maior_preco, media_preco)

# ==========================================
# 6. RELATÓRIO FINAL FORMATADO (Uso de f-strings)
# ==========================================
print("\n" + "="*40)
print("          RELATÓRIO FINAL")
print("="*40)

print("\n PREÇOS CRESCENTES:")
for p in produtos_crescente:
    print(f"  - {p[0]}: R$ {p[1]:.2f}")

print("\n PREÇOS DECRESCENTES:")
for p in produtos_decrescente:
    print(f"  - {p[0]}: R$ {p[1]:.2f}")

print("\n  CATEGORIAS CADASTRADAS (Sem repetição):")
# Vamos unir as categorias do Set com uma vírgula
print(f"  {', '.join(categorias_unicas)}")

print("\n ESTATÍSTICAS DOS PREÇOS (Tupla):")
# Acessando os dados da nossa tupla pelos índices (0, 1 e 2)
print(f"  - Mais barato: R$ {estatisticas_precos[0]:.2f}")
print(f"  - Mais caro:   R$ {estatisticas_precos[1]:.2f}")
print(f"  - Média:       R$ {estatisticas_precos[2]:.2f}")
print("="*40)
