# 1 - R como calculadora----

3+3 # Soma

2-2 # Subitração


3*3 # Mutiplicação


9/3 # Divisão
2^2 # Potencia


# Exemplo de funções

# Nome da função (argumentos)

log(10)
log(5)
log(10) # Resultado: 2.302585 (logaritmo)

sqrt(25) # Resultado: 5 (Raiz quadrada)

sqrt(9)
?sqrt

# 2 - Criando variaveis----
## Correto----
# objeto

a = 3

a <- 2

## Errado ----

2 = b # Não colocar número como nome do objeto
a w  = 2 # Não colocar espaço no nome do objeto
.a = 2 # Não o nome do objato com ponto


#operacao com variavel

maria = 2.6
diego = 3.2


total = maria+diego



# 3 - estrutura de armazenamento de variaveis 
## vetores----

# Cria um vetor 'Nomes' com 3 valores de texto (nomes)
Nomes = c("Douglas", "Maria", "Antonio")

# A linha abaixo serve para acessar a ajuda da função 'c()', que é usada para combinar elementos em um vetor.
?c


# Verifica a classe do objeto 'Nomes' (neste caso, deve ser "character", pois é um vetor de textos)
class(Nomes)

# Cria um vetor 'Notas' com 3 valores numéricos
Notas = c(1, 2, 3)

# Verifica a classe do objeto 'Notas' (deve ser "numeric", pois são números)
class(Notas)

# Cria um vetor 'Notas_2' com valores numéricos e um valor de texto (o "3" está entre aspas)
Notas_2 = c(1, 2, "3")

# Verifica a classe de 'Notas_2' (será "character", pois a presença de um valor de texto força o vetor inteiro a ser de caracteres)
class(Notas_2)

# Calcula a soma dos valores no vetor 'Notas'
sum(Notas)

# Calcula a média dos valores no vetor 'Notas'
mean(Notas)

# Tenta calcular a soma de 'Notas_2', mas, como contém um texto, o R irá forçar a conversão para caracteres, e o resultado será "123"
sum(Notas_2)

# Tenta calcular a média de 'Notas_2'. Como é um vetor de caracteres, o R retornará um erro ou NA.
mean(Notas_2)

# Criando um data frame com os vetores 'Nomes' e 'Notas'
# Um data frame é uma estrutura de dados bidimensional no R, onde as colunas podem ter diferentes tipos de dados, como números, textos ou fatores.
df = data.frame(Nomes, Notas)

# # O comando 'summary(df)' gera um resumo estatístico do data frame 'df'.
summary(df)

# Abre uma visualização interativa do data frame 'df' no RStudio
View(df)

# 4 Importando uma planilha de dados

# Instalar pacote

# Instala o pacote "openxlsx", necessário para ler e escrever arquivos Excel no R
install.packages("openxlsx")

# Carrega o pacote "openxlsx" para que possamos usar suas funções
library(openxlsx)

# Lê o arquivo Excel "ciliar.xlsx" e armazena os dados na variável 'dados'
dados = read.xlsx("ciliar.xlsx")

# Exibe um resumo estatístico básico dos dados, como média, mediana, etc.
summary(dados)

# Abre uma visualização interativa dos dados na interface do RStudio
View(dados)


#################################

# Exercício: Importar a planilha "pinguins" 

# Objetivo: Vamos aprender como importar uma planilha de dados
