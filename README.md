# desafio-sprint-4

# 🛒 Sistema de Produtos: Python vs. Portugol

Este projeto contém a implementação de um sistema de cadastro de produtos em duas linguagens: **Python** e **Portugol (VisuAlg)**. 

O objetivo principal desta atividade foi compreender o funcionamento interno das estruturas de dados, comparando as facilidades de uma linguagem moderna de alto nível (Python) com a lógica estrutural e manual exigida no Portugol.

## 🧠 O que eu aprendi neste projeto

### 1. Listas Dinâmicas vs. Vetores de Tamanho Fixo
* **Em Python (Listas):** As listas são dinâmicas e mutáveis. É possível adicionar novos produtos infinitamente usando `.append()`, sem se preocupar em declarar o tamanho da lista previamente.
* **Em Portugol (Vetores):** Aprendi como a alocação de memória funciona na base. Precisei definir o tamanho exato dos vetores logo no início do programa (ex: `vetor[1..3]`). Isso me ensinou que, por trás das listas dinâmicas do Python, há um gerenciamento complexo de espaço.

### 2. O custo lógico de eliminar duplicatas (Sets)
* **Em Python:** O `set()` resolve o problema de categorias repetidas de forma nativa e extremamente rápida. Basta adicionar os elementos e ele ignora automaticamente qualquer repetição.
* **Em Portugol:** Entendi a "mágica" por trás do `set()`. Para garantir valores únicos na mão, precisei implementar laços de repetição aninhados (um `Para` dentro de outro `Para`) e usar variáveis de controle booleanas (`repetido <- falso`) para varrer o vetor antes de cada inserção.

### 3. Tuplas e Imutabilidade
* **Em Python:** Utilizei **Tuplas** para armazenar as estatísticas finais (menor preço, maior preço, média). Diferente das listas, as tuplas são imutáveis. Aprendi que elas são a estrutura ideal para empacotar e proteger dados que não devem (e não podem) ser alterados acidentalmente durante a execução do código.

### 4. Algoritmos de Ordenação (Bubble Sort vs. `.sort()`)
* **Em Python:** Organizar os produtos do mais barato para o mais caro exigiu apenas o uso do método `.sort()` (que modifica a lista original) ou da função `sorted()` (que cria uma nova lista, ideal para manter os dados intactos).
* **Em Portugol:** Implementei o método **Bubble Sort** (Ordenação Bolha). Isso me fez visualizar como o computador realmente compara os itens de dois em dois, utilizando variáveis auxiliares (`aux`) para trocar os valores de posição sem perder os dados.

## 🚀 Como executar os códigos

- **Versão Python:** É necessário ter o Python 3 instalado. Execute o comando `python sistema_produtos.py` no terminal.
- **Versão Portugol:** Abra o arquivo `.alg` no software **VisuAlg** e pressione `F9` para executar (ou `F8` para rodar passo a passo e acompanhar as variáveis na memória).
