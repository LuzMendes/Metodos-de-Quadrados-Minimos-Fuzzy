<div align="center">
  <img src="Imagens/logo_Ilum-CNPEM.png" alt="Descrição da imagem" width="1000"/>
</div>

# Metodos de Quadrados Minimos Fuzzy
<p align="center">
  &nbsp;&bull;&nbsp; Área inovadora da Matemática 
  &nbsp;&bull;&nbsp; Ferramentas Adaptadas
  &nbsp;&bull;&nbsp; Ajuste de Curva
  &nbsp;&bull;&nbsp; Python
</p>

Esse repositório é destinado à adaptação de ferramentas computacionais utilizadas para o ajuste de curvas por Quadrados Mínimos e resolução de sistemas lineares por decomposição LU, de forma que estes possam receber como entrada matrizes compostas por números fuzzy triangulares.

<p align="center">
<img loading="lazy" src="http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge"/>
</p>

## Sumário
- [O que é o Fuzzy?](#o-que-é-o-fuzzy)
- [Como usar o código?](#como-usar-o-código)
- [Sistemas Lineares Fuzzy](#sistemas-lineares-fuzzy)
- [Quadrados Mínimos Fuzzy](#quadrados-mínimos-fuzzy)
- [Plotagem 3D](#plotagem-3d)
- [Resultados](#resultados)
- [Autores](#autores)

## O que é o Fuzzy?
A teoria de conjuntos fuzzy é uma área da matemática que permite a representação númerica não apenas de forma binária (pertence ou não pertence), mas atribuindo um grau de pertinência - ou pertencimento - com valores entre 0 e 1, retirando a rigidez numérica e possibilitando uma melhor representação da incerteza intrínseca à realidade. O Fuzzy é muito utilizado para criar ou trabalhar com dados incertos, como dados biológicos.

Nesse projeto, criamos números fuzzy para representarem a incerteza de dados sobre o número sobre infectados por HIV no Brasil e códigos que respeitam a aritmética Fuzzy (e.g. soma interativa via $J_0$) para adaptação dos métodos de ajuste de curva por Quadrados Mínimos e resolução de sistemas lineares por decomposição LU.

<img src="https://github.com/user-attachments/assets/0f0c5f62-1701-4722-b8eb-6725f69a94e7" height="350" style="display: block; margin: auto;">

## Como usar o código?
Podemos dividir os notebooks disponibilizados nesse repositório de acordo com as ferramentas que foram adaptadas:

* Álgebra Fuzzy
* Sistema Linear Fuzzy e Decomposição LU
* Quadrados Mínimos e Plotagem 3D

Além disso, na pasta "Imagens", é possível encontrar o notebook Jupyter "0.Gera_Gráficos", que contém os códigos referentes aos gráficos ilustrativos usados em apresentações e publicações.

## Sistemas Lineares Fuzzy
O método direto de resolução de sistemas lineares por **decomposição LU** consiste em fatorar a matriz A em duas matrizes triangulares, facilitando a resolução do sistema. Uma vez que para realizar um ajuste fuzzy devemos resolver diversos sistemas que possuem a mesma matriz A de coeficientes, esse foi o método que se mostrou mais vantajoso para a presente aplicação.

<div style="text-align: center;">
  <img src="https://github.com/user-attachments/assets/a1fc4580-6664-408f-9041-7f517968b5f5" height = "100px">
</div>

## Quadrados Mínimos Fuzzy

O método implementado nesse repositório para o ajuste de curvas é a extrapolação por **quadrados mínimos**, técnica de otimização que busca os coeficientes ideais de uma função de forma que minimize o erro quadrado entre os pontos e a curva prevista. Nesse projeto, adaptamos essa ferramenta para aceitar como entrada números fuzzy triangulares.

<div style="text-align: center;">
  <img src="https://github.com/user-attachments/assets/fde872dc-6ede-4234-9163-c1c1d6d33df4" height = "350px">
</div>

## Plotagem 3D

A plotagem 3D é o recurso gráfico que melhor ilustra os resultados obtidos na vigente aplicação, pois esta permite a visualização do **grau de pertencimento** de cada ponto da banda de incerteza gerada.

<div style="text-align: center;">
  <img src="https://github.com/user-attachments/assets/4634d7c1-ffcf-447b-96fb-1db95627e272" height = "400px">
</div>

## Resultados
Utilizando a implementação em Python do método de quadrados mínimos fuzzy aqui desenvolvida, aplicados a dados sintéticos fuzzy, obtivemos como resultados os seguintes ajustes lineares fuzzy:

<img src="Imagens/GráficoFuzzy.png" height = "400px">

Como característico da resolução de sistemas lineares fuzzy, foram obtidas algumas soluções - nesse caso, duas curvas diferentes. Assim, é preciso escolher qual melhor representa nossos dados. É possível observar que a solução 1, a longo prazo, se adequa melhor aos nossos dados visto que a incerteza não se abre muito, correspondendo melhor ao diâmetro dos dados fuzzy utilizados. Além disso, considerando que utilizamos a soma fuzzy otimista, a solução com menor banda de incerteza se correlaciona melhor com a abordagem proposta.

## Autores

[<img src="https://avatars.githubusercontent.com/u/172425049?v=4" width=100>](https://github.com/LuzMendes)
**Ana Luz Pereira Mendes**¹, Ilum Escola de Ciência, Centro Nacional de Pesquisa em Energia e Materiais

[<img src="https://avatars.githubusercontent.com/u/172425156?v=4" width=100>](https://github.com/leticiaalmnunes)
**Letícia Almeida Nunes**¹, Ilum Escola de Ciência, Centro Nacional de Pesquisa em Energia e Materiais

[<img src="https://avatars.githubusercontent.com/u/171518829?v=4" width=100>](https://github.com/yasminbshimizu)
**Yasmin Barbosa Shimizu**¹, Ilum Escola de Ciência, Centro Nacional de Pesquisa em Energia e Materiais

[<img src="https://avatars.githubusercontent.com/u/63320963?v=4" width=100>](https://github.com/viniciuswasques)
**Vinícius Francisco Wasques**, Ilum Escola de Ciência, Centro Nacional de Pesquisa em Energia e Materiais
<br><br>

_¹: Contribuições iguais_

<br><br>

_Clique na foto para ser redirecionado para o perfil do respectivo autor._

![Logos MCTI, CNPEM e ILUM](https://github.com/leticiaalmnunes/PCD---Boletim/assets/172425156/93c3eb13-410c-40c0-a412-7096187678a4)
</div>

