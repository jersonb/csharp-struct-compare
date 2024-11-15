# Análise dos tipos de estrutura do `C#`

> Projeto com a intenção de esmiuçar e comparar o uso dos tipos `class`, `struct`, `record` e `record struct`. Sim temos tudo isso além das típicas classes e o hypado struct.
> A proposta é criar um Value Object básico, placa de carro. Esse projeto foi construído aos poucos e comparando as quatro parte por parte. Nesse caso o código está no estágio final.
> Não tem a intenção de determinar oque é melhor ou pior, mas sim ter poder de comparação.
> Fique a vontade para criticar ou sugerir qualquer coisa.

## 1. Tempo de execussão

### Rodando testes

> Nenhuma diferença de tempo. rodando diversas vezes, todos são executados no mesmo tempo.

![image](https://github.com/user-attachments/assets/cd59cb81-df75-412c-86ec-57905a08dded)

> Porém na fase dos testes ficou evidenciado a maior diferença entre as estruturas, os testes 3 e 4 comparam duas instâncias. Na classe foi necessário implementar a interface `IEquatable`.
> Todas as outras possuem nativamente o poder da comparação por valores.

### Benchmark

> Não acredito que nanosegundos façam real diferença no dia a dia, mas como é um comparativo, a `record struct` foi mais rápida e a `class` mais lenta.

![image](https://github.com/user-attachments/assets/e290e9bf-0c03-445b-9813-65b9adaa9755)

> Utilizando o pacote BenchmarkDotNet.

## 2. Intermediate Language (IL)

> Não tenho capacidade técnica para analisar exatamente oque cada linha faz ou representa, mas os resultados estão no projeto. Para título de comparação vou utilizar a contagem de linhas de IL gerada para cada caso.

|Estrutura|Quant. Linhas|
|-:|:-:|
|Class|268|
|Record|451|
|Record Struct|354|
|Struct|159|

> Utilizando a extensáo ILSpy do Visual Studio 2022.

## 3. Métodos e propriedades geradas

|IL|VS|
|-|-|
||![image](https://github.com/user-attachments/assets/0950713c-f10d-409a-b918-db44607a6510)|
||![image](https://github.com/user-attachments/assets/7d2e4bed-34df-48a6-87b5-3ce9f55df506)|
||![image](https://github.com/user-attachments/assets/39a5b48f-9096-4b20-8bb5-c91dbc5479b5)|
||![image](https://github.com/user-attachments/assets/2e328af5-df60-44df-982e-39eeef94def4)|
