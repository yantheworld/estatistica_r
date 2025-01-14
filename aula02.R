# Carrega o pacote "openxlsx" para que possamos usar suas funções
library(openxlsx)

# Lê o arquivo Excel "ciliar.xlsx" e armazena os dados na variável 'dados'
dados = read.xlsx("pinguins.xlsx")

# Exibe um resumo estatístico básico dos dados, como média, mediana, etc.
summary(dados)
View(dados)


# Estatística descritiva no R

media = mean(dados$comprimento_bico, na.rm = T)

mediana = mean(dados$comprimento_bico, na.rm = T)

desvio_padrao = sd (dados$comprimento_bico, na.rm = T)

Erro_padrao = sd(dados$comprimento_bico, na.rm = T)/sqrt(length(dados$comprimento_bico))


# Inicio: regras de criação de variáveis 

#
dados = dados

dados_2 = dados

dados == dados_2

# Com o pacote dplayr posso manipular diferentes aspectos da minha planilha 

# Baixar pacote
install.packages("dplyr")

library(dplyr)


# Summarise 

# A função summarise é usada para calcular estatísticas resumidas, como média, mediana e desvio padrão.
# Primeiro, calculamos a média da coluna "comprimento_bico" do dataset "dados", ignorando valores ausentes (NA).



# Agora, vamos criar um novo dataframe com estatísticas descritivas sobre a variável "profundidade_bico" 
# usando a função summarise. Esse novo dataframe será chamado de "dados_resumidos".


# summarise
dados_resumidos = dados %>% 
  summarise(
    media = mean(profundidade_bico, na.rm = T))

# Exibe os resultados
View(dados_resumidos)


# Vamos acrescentar mediana, desvio e erro padrão

dados_resumidos = dados %>% 
  summarise(
    media = mean(profundidade_bico, na.rm = T),  
    mediana = median(profundidade_bico, na.rm = T),  
    Desvio_padrao = sd(profundidade_bico, na.rm = T),  
    erro_padrao = sd(profundidade_bico, na.rm = T)/sqrt(n())
  )

# Exibe os resultados
View(dados_resumidos)



# Estatística descritiva por espécie-----

# Agora, vamos calcular as estatísticas descritivas da "profundidade_bico", 
# mas separando os dados por "especies" usando a função group_by.

dados_resumidos = dados %>% 
  group_by(especies) %>%  
  summarise(
    media = mean(profundidade_bico, na.rm = T),  
    mediana = median(profundidade_bico, na.rm = T),   
    Desvio_padrao = sd(profundidade_bico, na.rm = T),  
    erro_padrao = sd(profundidade_bico, na.rm = T)/sqrt(n())
  )

# Exibe os resultados das estatísticas descritivas por espécie
View(dados_resumidos)


# Estatística descritiva por espécie e ano-----



# Agora, vamos agrupar os dados por "especies" e "ano" e calcular as estatísticas para "profundidade_bico".

dados_resumidos = dados %>% 
  group_by(especies, ano) %>%  
  summarise(  
    media = mean(profundidade_bico, na.rm = T),  
    mediana = median(profundidade_bico, na.rm = T),  
    Desvio_padrao = sd(profundidade_bico, na.rm = T),  
    erro_padrao = sd(profundidade_bico, na.rm = T)/sqrt(n())    )

# Exibe os resultados das estatísticas descritivas por espécie e ano
View(dados_resumidos)



# Agora, vamos agrupar os dados por "especies", "ano" e "ilha" e calcular as estatísticas para "profundidade_bico".

dados_resumidos = dados %>% 
  group_by(especies, ano, ilha) %>%  
  summarise(  
    media = mean(profundidade_bico, na.rm = T),  
    mediana = median(profundidade_bico, na.rm = T),  
    Desvio_padrao = sd(profundidade_bico, na.rm = T),  
    erro_padrao = sd(profundidade_bico, na.rm = T)/sqrt(n())  
  )

# Exibe os resultados das estatísticas descritivas por espécie, ano e ilha
View(dados_resumidos)


##############################################3
# Manipular a planilha----

# Filtra os dados para incluir apenas registros com profundidade do bico menor que 21.4

dados_selecionados = dados %>% 
  filter(profundidade_bico < 21.4)

# Exibe o dataframe filtrado
View(dados_selecionados)



# Remove linhas que contêm valores ausentes (NA)
dados_sem_na = na.omit(dados)

# Exibe o dataframe sem valores ausentes
View(dados_sem_na)

# Importar planilha (exportar os resultados das estatísticas descritivas)
write.xlsx(dados_resumidos, "dados_resumidos.xlsx")

