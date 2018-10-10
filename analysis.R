df_selecionados <- read.csv(file = "/home/roger/Repositories/MyoelectricAnalysis/dados.csv", sep = ";", header = TRUE, dec = ".")

library("effsize")

####################################################################################################################
#                                                   NORMALIDADE                                                    #
####################################################################################################################

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

# Verificando normalidade da relação Repetição/CVM para cada músculo na coleta final
shapiro.test(df_selecionados$V45)
shapiro.test(df_selecionados$V46)
shapiro.test(df_selecionados$V47)
shapiro.test(df_selecionados$V48)


####################################################################################################################
#                                           SIGNIFICÂNCIA - TEST T                                                 #
####################################################################################################################

# Relação Repetição/CVM de cada músculo entre controle e coleta inicial
t.test(df_selecionados$V37, df_selecionados$V41) # Iliocostal direito
t.test(df_selecionados$V38, df_selecionados$V42) # Longuíssimo direito
t.test(df_selecionados$V39, df_selecionados$V43) # Iliocostal esquerdo
t.test(df_selecionados$V40, df_selecionados$V44) # Longuíssimo esquerdo

# Relação Repetição/CVM de cada músculo entre coleta inicial e coleta final
t.test(df_selecionados$V41, df_selecionados$V45) # Iliocostal direito
t.test(df_selecionados$V42, df_selecionados$V46) # Longuíssimo direito
t.test(df_selecionados$V43, df_selecionados$V47) # Iliocostal esquerdo
t.test(df_selecionados$V44, df_selecionados$V48) # Longuíssimo esquerdo

# Dedos ao Solo - lado direito entre controle e coleta inicial
t.test(df_selecionados$V11, df_selecionados$V23)

# Dedos ao Solo - lado esquerdo entre controle e coleta inicial
t.test(df_selecionados$V12, df_selecionados$V24)

# Dedos ao Solo - lado direito entre coleta inicial e final
t.test(df_selecionados$V23, df_selecionados$V35)

# Dedos ao Solo - lado esquerdo entre coleta inicial e final
t.test(df_selecionados$V24, df_selecionados$V36)

####################################################################################################################
#                                      TAMANHO DO EFEITO - COHEN'S D                                               #
####################################################################################################################

# d de Cohen para cada músculo entre o período controle e a coleta inical
cohen.d(df_selecionados$V37, df_selecionados$V41)
cohen.d(df_selecionados$V38, df_selecionados$V42)
cohen.d(df_selecionados$V39, df_selecionados$V43)
cohen.d(df_selecionados$V40, df_selecionados$V44)

# d de Cohen para cada músculo entre a coleta inicial e a final
cohen.d(df_selecionados$V41, df_selecionados$V45)
cohen.d(df_selecionados$V42, df_selecionados$V46)
cohen.d(df_selecionados$V43, df_selecionados$V47)
cohen.d(df_selecionados$V44, df_selecionados$V48)

# Dedos ao Solo - lado direito entre controle e coleta inicial
cohen.d(df_selecionados$V11, df_selecionados$V23)

# Dedos ao Solo - lado esquerdo entre controle e coleta inicial
cohen.d(df_selecionados$V12, df_selecionados$V24)

# Dedos ao Solo - lado direito entre coleta inicial e final
cohen.d(df_selecionados$V23, df_selecionados$V35)

# Dedos ao Solo - lado esquerdo entre coleta inicial e final
cohen.d(df_selecionados$V24, df_selecionados$V36)
