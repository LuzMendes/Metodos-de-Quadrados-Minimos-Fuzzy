![Black Green and White Typographic and Modern Maths Themed Youtube Thumbnail](https://github.com/user-attachments/assets/0c2a3d79-2bd6-4ff3-a33d-b92e997a5c19)
# Metodos de Quadrados Minimos Fuzzy
<p align="center">
  <a href="[#Área da Matemática inovadora]">Área da Matemática inovadora</a> &nbsp;&bull;&nbsp;
  <a href="[#Ferramentas Adaptadas]">Ferramentas Adaptadas</a> &nbsp;&bull;&nbsp;
  <a href="[#Ajuste de Curva]">Ajuste de Curva</a> &nbsp;&bull;&nbsp
</p>
Esse repositório é destinado a adaptações de ferramentas matemáticas clássicas de ajuste de curva como o Quadrados Mínimos bem como métodos de resolução de Sistemas Lineares.

## Sumário
- [O que é o Fuzzy?](#o-que-é-o-fuzzy)
- [Como usar o código?](#como-usar-o-código)
- [Sistemas Lineares Fuzzy](#sistemas-lineares-fuzzy)
- [Quadrados Mínimos Fuzzy](#quadrados-mínimos-fuzzy)
- [Plotagem 3D](#plotagem-3d)
- [Autores](#autores)

## O que é o Fuzzy?
É uma área que permite atribuir um grau de pertencimento não apenas de forma binária ( pertence ou não pertence), mas valores entre 0 e 1, retirando a rigidez numérica e representando melhor a subjetividade e incerteza da realidade. Essa Teoria Fuzzy é muito usado para aplicar ou trabalhar com incerteza de dados, como dados biológicos. Nesse projeto, criamos também códigos que respeitam a Algebra Linear Fuzzy, como operações simples como soma e multiplicação.

<img src="https://github.com/user-attachments/assets/0f0c5f62-1701-4722-b8eb-6725f69a94e7" height="500" style="display: block; margin: auto;">


## Como usar o código?
Então, podemos dividir os notebooks disponibilizados nesse repositório de acordo com as ferramentas que foram adaptadas:

* Algebra Fuzzy
* Sistema Linear LU Fuzzy
* Quadrados Mínimos e Plotagem 3D

## Sistemas Lineares Fuzzy
O método direto de resolução de sistemas lineares por decomposição LU consiste em fatorar a matriz A em duas matrizes triangulares, facilitando a resolução do sistema. Uma vez que, para realizar um ajuste fuzzy, devemos resolver diversos sistemas que possuem a mesma matriz A para verificarmos todas as possíveis soluções.

<div style="text-align: center;">
  <img src="https://github.com/user-attachments/assets/a1fc4580-6664-408f-9041-7f517968b5f5" height = "200px">
</div>

## Quadrados Mínimos Fuzzy

O métodos implementado, nesse repositório, para o ajuste de curvas é a extrapolação por quadrados mínimos, técnica de otimização que busca os coeficientes ideais de uma função para minimizar o erro quadrado entre os pontos e a curva prevista. Então, nesse projeta adaptamos essa ferramenta para aceitar números triangulares fuzzy.

<div style="text-align: center;">
  <img src="https://github.com/user-attachments/assets/fde872dc-6ede-4234-9163-c1c1d6d33df4" height = "500px">
</div>


## Plotagem 3D

A plotagem 3D é um recurso que mais inlustra o resultado obtido, pois a partir dele podemos compreender o grau de pertencimento da faixa de incerteza gerada.

<div style="text-align: center;">
  <img src="https://github.com/user-attachments/assets/4634d7c1-ffcf-447b-96fb-1db95627e272" height = "250px">
</div>

## Autores

<div style="display: flex; justify-content: center; gap: 20px;">

  <figure style="text-align: center;">
    <a href="https://github.com/LuzMendes">
      <img src="https://avatars.githubusercontent.com/u/172425049?v=4" alt="Ana Luz Pereira Mendes" width="115">
    </a>
    <figcaption>Ana Luz Pereira Mendes</figcaption>
  </figure>

  <figure style="text-align: center;">
    <a href="https://github.com/yasminbshimizu">
      <img src="https://avatars.githubusercontent.com/u/171518829?v=4" alt="Yasmin Barbosa Shimizu" width="115">
    </a>
    <figcaption>Yasmin Barbosa Shimizu</figcaption>
  </figure>

  <figure style="text-align: center;">
    <a href="https://github.com/leticiaalmnunes">
      <img src="https://avatars.githubusercontent.com/u/172425156?v=4" alt="Leticia Almeida Nunes" width="115">
    </a>
    <figcaption>Leticia Almeida Nunes</figcaption>
  </figure>

</div>

