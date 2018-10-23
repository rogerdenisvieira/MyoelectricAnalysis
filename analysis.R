df_selecionados <- read.csv(file = "C:/Users/roger.vieira/Repositories/MyoelectricAnalysis/dados.csv", sep = ";", header = TRUE, dec = ".")

library("effsize")

####################################################################################################################
#                                                   NORMALIDADE                                                    #
####################################################################################################################

# CVM Controle
shapiro.test(df_selecionados$V1)
shapiro.test(df_selecionados$V2)
shapiro.test(df_selecionados$V3)
shapiro.test(df_selecionados$V4)

# Repetição Controle
shapiro.test(df_selecionados$V5)
shapiro.test(df_selecionados$V6)
shapiro.test(df_selecionados$V7)
shapiro.test(df_selecionados$V8)

# CVM Inicial
shapiro.test(df_selecionados$V13)
shapiro.test(df_selecionados$V14)
shapiro.test(df_selecionados$V15)
shapiro.test(df_selecionados$V16)

# Repeticao Inicial
shapiro.test(df_selecionados$V17)
shapiro.test(df_selecionados$V18)
shapiro.test(df_selecionados$V19)
shapiro.test(df_selecionados$V20)

# CVM Final
shapiro.test(df_selecionados$V25)
shapiro.test(df_selecionados$V26)
shapiro.test(df_selecionados$V27)
shapiro.test(df_selecionados$V28)

# Repeticao Final
shapiro.test(df_selecionados$V29)
shapiro.test(df_selecionados$V30)
shapiro.test(df_selecionados$V31)
shapiro.test(df_selecionados$V32)

####################################################################################################################
#                                           SIGNIFICANCIA - TEST T                                                 #
####################################################################################################################


# CVM Controle x Inicial
t.test(df_selecionados$V1, df_selecionados$V13)
t.test(df_selecionados$V2, df_selecionados$V14)
t.test(df_selecionados$V3, df_selecionados$V15)
t.test(df_selecionados$V4, df_selecionados$V16)

# CVM Inicial x Final
t.test(df_selecionados$V13, df_selecionados$V25)
t.test(df_selecionados$V14, df_selecionados$V26)
t.test(df_selecionados$V15, df_selecionados$V27)
t.test(df_selecionados$V16, df_selecionados$V28)

# Repeticao Controle x Inicial
t.test(df_selecionados$V5, df_selecionados$V17)
t.test(df_selecionados$V6, df_selecionados$V18)
t.test(df_selecionados$V7, df_selecionados$V19)
t.test(df_selecionados$V8, df_selecionados$V20)

# Repeticao Inicial x Final
t.test(df_selecionados$V17, df_selecionados$V29)
t.test(df_selecionados$V18, df_selecionados$V30)
t.test(df_selecionados$V19, df_selecionados$V31)
t.test(df_selecionados$V20, df_selecionados$V32)


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

# CVM Controle x Inicial
cohen.d(df_selecionados$V1, df_selecionados$V13)
cohen.d(df_selecionados$V2, df_selecionados$V14)
cohen.d(df_selecionados$V3, df_selecionados$V15)
cohen.d(df_selecionados$V4, df_selecionados$V16)

# CVM Inicial x Final 
cohen.d(df_selecionados$V13, df_selecionados$V25)
cohen.d(df_selecionados$V14, df_selecionados$V26)
cohen.d(df_selecionados$V15, df_selecionados$V27)
cohen.d(df_selecionados$V16, df_selecionados$V28)

# Repeticao Controle x Inicial
cohen.d(df_selecionados$V5, df_selecionados$V17)
cohen.d(df_selecionados$V6, df_selecionados$V18)
cohen.d(df_selecionados$V7, df_selecionados$V19)
cohen.d(df_selecionados$V8, df_selecionados$V20)

# Repeticao Inicial x Final
cohen.d(df_selecionados$V17, df_selecionados$V29)
cohen.d(df_selecionados$V18, df_selecionados$V30)
cohen.d(df_selecionados$V19, df_selecionados$V31)
cohen.d(df_selecionados$V20, df_selecionados$V32)


# Dedos ao Solo - lado direito entre controle e coleta inicial
cohen.d(df_selecionados$V11, df_selecionados$V23)

# Dedos ao Solo - lado esquerdo entre controle e coleta inicial
cohen.d(df_selecionados$V12, df_selecionados$V24)

# Dedos ao Solo - lado direito entre coleta inicial e final
cohen.d(df_selecionados$V23, df_selecionados$V35)

# Dedos ao Solo - lado esquerdo entre coleta inicial e final
cohen.d(df_selecionados$V24, df_selecionados$V36)






