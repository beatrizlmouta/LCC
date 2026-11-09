# 📐 MATRIZES
Matriz é uma tabela organizada em linhas e colunas no formato **m x n**, onde **m** representa o **número de linhas** (horizontal) e **n** o **número de colunas** (vertical).
* **Notação:** A = [aᵢⱼ]ₘₓₙ
* **Representação geral:**
  
  <img width="250" height="250" alt="matriz-m-n" src="https://github.com/user-attachments/assets/3f4ed82b-c339-4638-9e5f-40d370444f3a" />

## Tipos de Matrizes
* **Matriz Linha:** Matriz de **uma** linha.
* **Matriz Coluna:** Matriz de **uma** coluna.
* **Matriz Nula:** Matriz de elementos iguais a zero.
* **Matriz Quadrada:** Matriz com igual nº de linhas e colunas.
* **Triangular Superior:** Todos os elementos abaixo da diagonal principal são zero.
* **Triangular Inferior:** Todos os elementos acima da diagonal principal são zero.

### **Matriz Identidade (In)**
É uma matriz quadrada cujos elementos da diagonal principal são iguais a 1 e os restantes são iguais a 0.  
                       <img src="https://github.com/user-attachments/assets/066ba9b0-1c98-4d9d-922f-2ae9213f5a89" width="150" />

### **Matriz Inversa**
Uma matriz quadrada B é a inversa da matriz quadrada A quando a multiplicação das duas matrizes resulta em uma matriz identidade In, ou seja, A x B = B x A = In 
  * <mark>Exemplo:</mark>  
```text              
B = [  2   1  ]      B⁻¹ =  [   3  -1  ]
    [  5   3  ]             [  -5   2  ]
```
 A multiplicação das duas matrizes resulta em uma matriz identidade, In. 
```text
B x B⁻¹ = [  2   1  ]  x [   3  -1  ] = [2x3+1x(-5)   2x(-1)+1x2] = [1 0]
          [  5   3  ]    [  -5   2  ]   [5x3+4x(-5)  5x(-1)+ 3x2]   [0 1] 
```

### **Matriz Transposta** 
Troca ordenada das linhas e colunas. 
   * <mark>Exemplo:</mark>
```text
B = [1 2]  a transposta fica: [1 3 5]
    [3 4]                     [2 4 6] 
    [5 6]
```

## Operações entre Matrizes 
###Adição de matrizes 
Só é possivel somar matrizes do mesmo tipo. 
  * <mark>Exemplo:</mark>
```text
[1  3] + [2  0] = [ 1+2      3+0] = [3  3]
[-1 0]   [3 -1]   [(-1)+3 0*(-1)]   [2 -1]
```
#### Propriedades 
 * **Comutativa:** A + B = B + A
 * **Associativa:** (A + B) + C = A + (B +C)
 * **Elemento neutro:** A + 0 = 0 + A = A (se 0 for uma matriz nula da mesma ordem que a matriz A)
 * **Elemento simétrico:** A + (-A) = (-A) + A = 0 
   
