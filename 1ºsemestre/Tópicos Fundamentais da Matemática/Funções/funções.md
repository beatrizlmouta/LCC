### Funções 
$R$ é uma função/aplicação de $A$ em $B$ se: 
  1. $D_R = A$ (todo o elemento de A tem imagem)
  2. $(a,b1) (a,b2) ∈ ℝ ⇒ b1 = b2$ (a imagem é única) ou seja, para cada $a∈A$ existe **um e um só** $b$ com $(a,b)∈ ℝ.$
     
     `Notação:` $f: A → B$

A cada elemento $a∈A$ chama-se objeto. O elemento $b ∈ B$ correponde à imagem e representa-se por $f(a)$. 

```text
Definição de função: 
                              ∀x1 x2 ∈ A (x1 x2 ⇒ f(x1) = f(x2)) 
```
Conjunto de todas as funções de $A$ por $B$: $B^A$  

```text 
       f: A → B
          a ↦ f(a)
``` 
## Aplicação vazia:    
$∅: ∅ → A$

  $A ≠ ∅ → A^∅ = {∅} ∧ ∅^A = ∅$

⚠️ **$∅$ = 0 funções (impossível) ; ${∅}$ = 1 função (a função vazia)**




## Igualdade de funções: 
$f: A → B$ e $g: A' → B'$ são iguais se $A=A'$ e $B=B'$ e $f(x)=g(x)$ para todo $x ∈ A$.

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
Todo o elemento do contradominio $B$ é imagem de pelo menos um elemento de $A$. 

## Bijetividade: 
É **injetiva** e **sobrejetiva**. 

## Restrições de funções:
É a mesma função $f$, mas com o domínio reduzido a um subconjugado $X ⊆ A$. O conjunto de chegada $B$ não muda. 
             **$f|_A$ = $f(a)$**

`EXEMPLO:` 
```text
Seja f: ℤ → ℤ uma aplicação definida por f(x)=2x, para todo x ∈ ℤ. 
Então, f|2ℤ: 2ℤ → ℤ
             2x ↦ 4x 
      (Ao restringir aos números pares (2ℤ), cada entrada par (2x) é multiplicada por 2, resultando em 4x (2x ↦ 4x).)
```

## Função Composta: 
   Se $f: A → B$ e $g: B → C$, então $g \circ f$ é função de $A$ em $C$, com $(g \circ f)(x) = g(f(x))$.

   **para provar que $g \circ f$ é função temos que:**

  1. $∀a ∈ A ∃c ∈ C : (a,c) ∈ g \circ f$ 
  2. $(a,c1) , (a,c2) ∈ g \circ f ⇒ c1 = c2$
 
 `Notação:` 
 ```text
         g ∘ f: A → C 
                x ↦ g(f(x))
```

**propriedades:** 
* $h∘(g ∘ f) = (h∘g)∘f$
* f ∘ $id_A = f = id_B ∘ f$ 
* $f, g$ injetivas → $g∘f$ é injetiva 
* $g, g$ sobrejetivas → $g∘f$ é sobrejetiva 
* $f, g$ bijetivas $→ g∘f$ é bijetiva  

## Função Inversa: 
A relação inversa **$f^{-1}$ é uma função** se e só se **$f$ for bijeitva**

**teorema:** $f^{-1}$ é uma função de $B$ em $A$ ⇔ é bijetiva. Nesse caso, $f^{-1}$ também é bijetiva e $f^{-1}(b) = a ⇔ b=f(a)$

**teorema(caracterização):** $f:A→B$ é bijetiva ⇔ existe $g:B→A$ tal que $g∘f=id_A$ e $f∘g=id_B$. A aplicação g é única nestas condições. 

Se $f: A → B$ e $g: B → C$ são bijetivas, então: 
1. $(f^{-1})^{-1}$ = $f$ 
2. $(g \circ f)^{-1} = f^{-1} ∘  g^{-1}$

## Imagens de conjuntos: 

### imagem de um conjunto por uma função
A imagem de um conjunto $X$ por uma função $f:A→B$ é o **conjunto de todos os resultados obtidos ao aplicar a função a cada elemento de $X$.** Representa-se por **$f(X)$** ou **$f^{\to}(X)$**
 
 $f: A→B$ 
 $A_1 ⊆ A f^{\to}(A_1) = {f(x): x ∈ A_1}$

 * A imagem do conjunto vazio é sempre vazia: **$f(∅) = ∅$**
 * A imagem de todo o dominio $A$ é o contradomínio efetivo(ou conjunto imagem) da função: **$f(A) = D'_f$**

### imagem inversa de um conjunto por uma função 
A imagem inversa de um conjunto $Y ⊆ B$ por uma função $f:A→B$ é o subconjunto do dominio $A$ formado por todas os elementos cujas imagens pertencem a $Y$, representando-se por $f^{-1}(Y)$ ou $f^{\leftarrow}(Y)$

 $f: A→B$ 
 $B_1 ⊆ B f^{\leftarrow}(B_1) = {x ∈ A: F(x) ∈ B_1}$

 ⚠️Aplica-se a qualquer função $f$, mesmo que não seja bijetiva (não exige função inversa)

* $f^{\leftarrow}(∅) = ∅$
* $f^{\leftarrow}(B) = A = D'_f$

**Teorema(composição de imagens):**
* $ X ⊆ f^{\leftarrow}(f(x))$;
* $ X = f^{\leftarrow}(f(x))$, se $f$ for injetiva. 
* $ f(f^{\leftarrow}(Y)) ⊆ Y$;
* $ f(f^{\leftarrow}(Y)) = Y$, se $f$ for sobrejetiva.
**Teorema(caracterização de imaegns):** 
* $f$ é injetiva $⇔ f(X∩Y) = f(x) ∩ f(Y)$
* $f$ é sobrejetiva $⇔$ $\Leftrightarrow B \setminus f(x) ⊆ f(A \setminus X)$
* $f$ é bijetiva $⇔$ $\Leftrightarrow B \setminus f(x) = f(A \setminus X)$

**ideias chave nas provas:**
* Injetividade: $f(x)=f(a) → x = a$
* Sobrejetividade: $∀b ∈ B, ∃a ∈ A: f(a) = b$
