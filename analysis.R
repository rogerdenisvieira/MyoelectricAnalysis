df_selecionados <- read.csv(file = "C:/Users/roger.vieira/Repositories/MyoelectricAnalysis/data.tsv", sep = "\t", header = FALSE, dec = ",")


# Verificando normalidade da relação Repetição/CVM para cada músculo no período controle
shapiro.test(df_selecionados$V37)
shapiro.test(df_selecionados$V38)
shapiro.test(df_selecionados$V39)
shapiro.test(df_selecionados$V40)

# Verificando normalidade da relação Repetição/CVM para cada músculo na coleta inicial
shapiro.test(df_selecionados$V41)
shapiro.test(df_selecionados$V42)
shapiro.test(df_selecionados$V43)
shapiro.test(df_selecionados$V44)

# Como as relações Repetição/CVM não são normais, será utilizado o teste de Wilcoxon

# Relação Repetição/CVM de cada músculo entre controle e coleta inicial
wilcox.test(df_selecionados$V37, df_selecionados$V41) # Iliocostal direito
wilcox.test(df_selecionados$V38, df_selecionados$V42) # Longuíssimo direito
wilcox.test(df_selecionados$V39, df_selecionados$V43) # Iliocostal esquerdo
wilcox.test(df_selecionados$V40, df_selecionados$V44) # Longuíssimo esquerdo


# Dedos ao Solo - lado direito entre controle e coleta inicial
wilcox.test(df_selecionados$V11, df_selecionados$V23)

# Dedos ao Solo - lado esquerdo entre controle e coleta inicial
wilcox.test(df_selecionados$V12, df_selecionados$V24)