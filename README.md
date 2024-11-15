# Análise dos tipos de estrutura do `C#`

Projeto com a intenção de esmiuçar e comparar o uso dos tipos `class`, `struct`, `record` e `record struct`. Sim temos tudo isso além das típicas classes e o *hypado* struct.

A proposta é criar um Value Object básico, placa de carro. Esse projeto foi construído aos poucos e comparando as quatro estruturas, parte por parte. Nesse caso o código está no estágio final.

Não tem a intenção de determinar o que é melhor ou pior, mas sim ter poder de comparação.

Fique a vontade para criticar ou sugerir qualquer coisa.

## 1. Tempo de execução

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

> Não tenho capacidade técnica para analisar exatamente o que cada linha faz ou representa, mas os resultados estão no projeto. Para título de comparação vou utilizar a contagem de linhas de IL gerada para cada caso.

|Estrutura|Quant. Linhas|
|-:|:-:|
|Class|268|
|Record|451|
|Record Struct|354|
|Struct|159|

> Utilizando a extensão ILSpy do Visual Studio 2022.

## 3. Métodos e propriedades geradas

> Comparativo do que é acessível via IDE e o que é gerado pela IL.

|Estrutura|IL|VS|
|:-:|-|-|
|`class`|![image](https://github.com/user-attachments/assets/602472ca-1966-44b7-a78b-4fecbe08ee16)|![image](https://github.com/user-attachments/assets/0950713c-f10d-409a-b918-db44607a6510)|
|`record`|![image](https://github.com/user-attachments/assets/b08617c0-eeec-4eef-be74-cd3fcf3bfa69)|![image](https://github.com/user-attachments/assets/7d2e4bed-34df-48a6-87b5-3ce9f55df506)|
|`record struct`|![image](https://github.com/user-attachments/assets/a3471e3d-c5d9-4b8a-8f77-13f2eefa552c)|![image](https://github.com/user-attachments/assets/39a5b48f-9096-4b20-8bb5-c91dbc5479b5)|
|`struct`|![image](https://github.com/user-attachments/assets/4272edfe-484a-41b5-b6ae-1b47a8a26e5a)|![image](https://github.com/user-attachments/assets/2e328af5-df60-44df-982e-39eeef94def4)|

> Os mais fidedignos são a class e a struct. É interessante notar que o record e o record struct geram mais coisas na IL.
