# Carregar as bibliotecas necessárias
library(readxl)

# Ler o arquivo de dados
controle_corrupcao_executivo <- read_excel("C:/Users/daly_/OneDrive/Estatísticas doutorado/controle_executivo_corrupcao.xlsx")

# Criar o diretório "dados" se não existir
if (!dir.exists("dados")) {
  dir.create("dados")
}

# Salvar o DataFrame como um arquivo CSV no diretório "dados"
write.csv(controle_corrupcao_executivo, "dados/controle_corrupcao_executivo.csv", row.names = FALSE)

# Adicionar, commitar e fazer push no Git
system("git init")
system("git add .")
system('git commit -m "Adicionar arquivo de dados controle_corrupcao_executivo"')

# Configurar o remote para o seu repositório no GitHub
repo_url <- "https://github.com/Dalyana008/base_dados.git"
system(paste("git remote add origin", repo_url))

# Fazer push para o branch principal (main)
system("git push -u origin main")

