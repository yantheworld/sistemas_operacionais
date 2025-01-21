
#Gráfico de distribuição de sistemas operacionais.

install.packages("ggplot2") #Instalar o ggplot2.
library(ggplot2) # Carregando pacote.


# Criação do dataframe com os dados do site.
so_data <- data.frame(
  Sistema_Operacional = c("Windows", "macOS", "Linux", "Chrome OS", "FreeBSD"),
  Percentual = c(74.73, 14.4, 2.81, 1.86, 0.01)
)

# Visualizar o dataframe criado
View(so_data) 


# Criação do gráfico através do dataframe.
ggplot(data = so_data,
       aes(x = reorder(Sistema_Operacional, -Percentual),
           y = Percentual, 
           fill = Sistema_Operacional))+
  geom_bar(stat = "identity")+
  labs(title = "Distribuição de Sistemas Operacionais",
       x = " ",
       y = " ")+
  theme_minimal()+
  scale_fill_brewer(palette = "Set2")+
  theme(legend.position = "none")+
  geom_text(aes(label = paste0(Percentual, "%")), vjust = -0.5, size = 3.5)+
  theme(
    legend.text = element_text(face = "bold")
  )+
  theme(plot.title = element_text(hjust = 0.5))
