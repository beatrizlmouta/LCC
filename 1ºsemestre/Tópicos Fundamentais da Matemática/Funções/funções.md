### Funções 
R é uma função/aplicação de A em B se: 
  1. DR = A (todo o elemento de A tem imagem)
  2. (a,b1) (a,b2) ∈ ℝ ⇒ b1 = b2 (a imagem é única) ou seja, para cada a∈A existe **um e um só** b com (a,b)∈ ℝ.
     
     `Notação:` f: A → B

A cada eleento a∈A chama-se objeto. O elemento b∈B correponde à imagem e representa-se por f(a). 

```text
Definição de função: 
                              ∀x1 x2 ∈ A (x1 x2 ⇒ f(x1) = f(x2)) 
```
Conjunto de todas as funções de A por B: $B^A$  

```text 
       f: A → B
          a ↦ f(a)
``` 
## Aplicação vazia:    
∅: ∅ → A

  A ≠ ∅ → $A^∅$ = {∅} ∧ $∅^A$ = ∅

⚠️ **∅ = 0 funções (impossível) ; {∅} = 1 função (a função vazia)**




## Igualdade de funções: 
f: A → B e g: A' → B' são iguais se A=A' e B=B' e f(x)=g(x) para todo x ∈ A.

`EXEMPLO:`
```text 
       Sejam A= {1,2,3} e B={2,4,6,8}.
       Então, 
                f={(1,2) , (2,4) , (3,6)} ⊆ A * B 
                g: A → B
                   x ↦ 2x                                                                
                                                   são duas aplicações iguais. 
``` 
## Injetividade: 
Objetos diferentes têm imagens diferentes. 

## Sobrejetividade: 
Todo o elemento do contradominio B é imagem de pelo menos um elemento de A. 

## Bijetividade: 
É **injetiva** e **sobrejetiva**. 

## Restrições de funções:
É a mesma função f, mas com o domínio reduzido a um subconjugado X ⊆ A. O conjunto de chegada B não muda. 
             **$f|_A$ = f(a)**

`EXEMPLO:` 
```text
Seja f: ℤ → ℤ uma aplicação definida por f(x)=2x, para todo x ∈ ℤ. 
Então, f|2ℤ: 2ℤ → ℤ
             2x ↦ 4x 
      (Ao restringir aos números pares (2ℤ), cada entrada par (2x) é multiplicada por 2, resultando em 4x (2x ↦ 4x).)
```

## Função Composta: 
   Se f: A → B e g: B → C, então $g \circ f$ é função de A em C, com ($g \circ f$)(x) = g(f(x)).

   **para provar que $g \circ f$ é função temos que:**

  1. ∀a ∈ A ∃c ∈ C : (a,c) ∈ $g \circ f$ 
  2. (a,c1) , (a,c2) ∈ $g \circ f$ ⇒ c1 = c2
 
 `Notação:` $
 g \circ f$ : A → C 
 
 
              x ↦ g(f(x))
