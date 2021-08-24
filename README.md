<h2 align="center"> 
	🚧  Desafio Técnico Escribo - Completo 🚀 🚧
</h2>

<p align="center">
 <a href="#-sobre-o-projeto">Sobre</a> •
 <a href="#-funcionalidades">Funcionalidades</a> •
 <a href="#-layout">Layout</a> • 
 <a href="#-como-executar-o-projeto">Como executar</a> • 
 <a href="#-tecnologias">Tecnologias</a> • 
</p>

## 💻 Sobre o projeto

Desafio Técnico Escribo

DESAFIO:

Descrição:
    - Implemente uma função que receba um número inteiro positivo e retorne o
somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao
número passado.

Exemplos:
    - Caso sua função receba o inteiro 10, ela deve retornar 23, resultante do somatório
dos números 3, 5, 6 e 9 que são menores que 10.
    - Caso sua função receba o inteiro 11, ela deve retornar 33, resultante do somatório
dos números 3, 5, 6, 9 e 10 que são menores que 11.

Projeto desenvolvido no processo seletivo da Escribo.

Projeto desenvolvido com Flutter/Dart na sua versão hibrida Mobile e Web.

---
## ⚙️ Funcionalidades

- [✔] O usuário passa um número inteiro positivo e recebe de volta a soma total dos valores divisíveis por 3 ou 5 e os números utilizados na soma.

---
## 🎨 Layout

### Web
<table>
  <tr>
    <td>Tela inicial.</td>
  </tr>
  <tr>
    <td><img src="git\web_version_escribo.gif" width=800 height=400></td>
  </tr>
 </table>

### Mobile
<table>
  <tr>
    <td>Tela inicial.</td>
  </tr>
  <tr>
    <td><img src="git\mobile_version_escribo.gif" width=200 height=400></td>
  </tr>
 </table>


## 🚀 Como executar o projeto

Ao clonar o projeto, abra sua IDE favorita selecione o pasta, rode o comando( flutter pub get ) no terminal onde esta o projeto se encontra para instalar as dependências.
Verifique se suas versões flutter e dart estão atualizadas.
(Por favor verificar se sua maquina o flutter e dart instalados)
(Versões Utilizadas Flutter 2.2.2 e Dart 2.13.3)

Caso prefira executar de forma mais rápida, use esse site, copie o código a seguir 

~~~Dart
     void main() {
      // Aqui é adicionado o numero de entrada
      int entryNumber = 10;
      //Valor que vai conter a soma.
      int totalSum = 0;
      //Lista com os valores que serão somados.
      List<int> numbers = [];

      for (var i = 1; i < entryNumber; i++) {
        if ((i % 3 == 0) || (i % 5 == 0)) {
          totalSum += i;
          numbers.add(i);
        }
      }
      print(numbers.toString());
      print(totalSum.toString());
}
~~~

cole no site e execute.

-  **[Dartpad](https://dartpad.dev/?null_safety=true)**

---

## 🛠 Tecnologias
As seguintes ferramentas foram usadas na construção do projeto:

-  **[Flutter](https://flutter.dev)**
-  **[Dart](https://dart.dev)**



