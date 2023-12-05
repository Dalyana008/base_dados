setwd("C:/Users/daly_/OneDrive/Documentos/R/etl_com_r/bases_tratadas/base_dados")

system("git status")
system("git log")

system("ls")
system("git show HEAD")
system("git branch --unset-upstream")
system("git branch --set-upstream-to=origin/main main")
system("git remote -v")
system("git branch")
system("git push -f origin main")
