import pandas as pd;

print("1 - Ler arquivo txt");
df = pd.read_csv("arquivos/Questão 1 - Base.txt ", delim_whitespace = True)

print("2 - Imprimir arquivo");
print(df);