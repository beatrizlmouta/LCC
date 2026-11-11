# Como usar o Git & GitHub (Kit de sobrevivência para Caloiros)

Eu sei que todos aqueles comandos parecem ser um bicho de sete cabeças. Já estive no teu lugar e sei o quão intimidante é no início. Mas não te preocupes, foi precisamente por isso que criei este guia: para te **ajudar passo a passo e tornar o teu dia a dia com o Git muito mais simples!** 

## 1. Afinal, qual é a diferença entre Git e GitHub? 
* **Git:** Software instalado no teu computador que guarda o histórico de alteração do teu código (funciona offline). 
* **GitHub:** Site onde guardas os teus repositórios para teres um buckup seguro e trabalhares em grupo (funciona online).

### **🫂Como funcionam juntos?** 
➔ Programas no PC: Escreves o código.

➔ Fazes Commit: Guardas uma versão segura no teu computador (e escreveS algo útil, para o teu eu do futuro agradeçer).

➔ Fazes Push: Evias o trabalho para o GitHub.

➔ Trabalhas em grupo: O teu colega descarrega as novidades fazendo Pull. 

## Fim da introdução!

Agora que já sabes o que são estas coisas todas (antes que adormeças), prepara o teclado porque vamos passar à prática!

## 📂 Comandos básicos do Terminal
Antes de mexeres no Git, precisas de saber andar pelas pastas no terminal: 
* `ls` - Mostra o que está dentro da pasta onde estás.  
* `cd nome-da-tua-pasta`-Entra numa pasta. 
* `cd ..` -Volta para a pasta anterior. 
* `cd`-O terminal transporta-te de volta para a tua pasta pessoal principal.    
* `mkdir "Pasta"` -Cria apenas uma pasta. 
* `mkdir -p "Pasta/Subpasta"` -Cria uma pasta e uma subpasta dentro dela e uma só vez.  (**ATENÇÃO:** O git ignora pastas vazias então certifica-te de adicionares sempre algum documento.)
* `touch "Pasta/ficheiro.md"` -Cria um ficheiro vazio lá dentro (agora o Git já vê a pasta)
* `mv "origem" "destino"` -O comando `mv` serve para duas coisas: **mover um ficheiro**(ex: `mv "apontamentos.md" "Álgebra Linear/"`) ou **mudar-lhe o nome**(ex: `mv "rascunho.md" "final.md"`).
* `rm "ficheiro.md"` -Apaga um **ficheiro** permanentemente.
* `rm -rf "Pasta"` -Apaga uma **pasta e tudo o que está lá dentro** de uma só vez.  (**CUIDADO:** Apagou, está apagado!).


💡 **Dica:** Se o nome da pasta tiver espaços ou símbolos utiliza sempre aspas. Se não o fizeres o terminal baralha-se todo. 

---
🎯 **Missão:** Deixar o teu computador pronto para criar pastas, guardar código e enviar tudo para o GitHub em segundos. 

⚠️ **Antes de começares:** Já tens conta no [GitHub](https://github.com)? Se ainda não criaste uma, vai lá primeiro!

## PASSO 1: Configurar a Chave SSH (Só precisas fazer isto 1 vez na vida!)

1. **Gera a chave no terminal** (usa o teu e-mail do GitHub e carrega em Enter 3 vezes seguidas): 
   ```text
   ssh-keygen -t ed25519 -C "o-teu-email@exemplo.com"
   ```
2. **Copia a tua chave** (copia a linha inteira que aparecer no ecrã, começada por `ssh-ed25519`):
   ```text
   cat ~/.ssh/id_ed25519.pub
   ```
3. **Cola no GitHub:** Vai ao site do GitHub ➔ Foto de perfil ➔ **Settings** ➔ **SSH and GPG keys** ➔ **New SSH key** ➔ Dá um nome ao PC, cola a chave em **Key** e guarda.
4. **Testa a ligação** no terminal:
   ```text
   ssh -T git@github.com
   ```
## PASSO 2: Descarregar um repositório 
Quando crias um repositório no GitHub (ou entras num projeto de grupo), precisas de o puxar para o teu computador **uma primeira vez**:

1. Abre o terminal, cria uma pasta para os teus projetos da faculdade e entra nela:
   ```text
   mkdir pasta
   cd pasta
   ```
2. Vai à página do repositório no GitHub, clica no botão verde **<> Code**, escolhe o separador **SSH** e copia o link (`git@github.com:...`).
3. **Clona o repositório e entra nele:**
   ```text
   git clone git@github.com:teu-usuario/nome-do-repositorio.git (link que acabaste de copiar) 
   cd nome-do-repositorio
   ```
## PASSO 3: A rotina diária 

Sempre que abrires o terminal do zero para trabalhar num projeto: 

1. **Entra na pasta do teu repositório:** 
   ```text
   cd pasta/nome-do-repositório
   ``` 
2. **Puxa as novidades do GitHub** (importante para sincronizar alterações feitas online ou pelos teus colegas do projeto)
    ```text
    git pull 
    ```
3. **Faz o teu trabalho** (não te esqueças do **ctrl s** no final)
4. **Manda tudo de volta para o GitHub** (estes são os 3 comandos mais importantes): 
   ```text
      git add . (não te esqueças do espaço e do ponto final!)
      git commit -m "Escreve aqui o que fizeste" 
      git push 
      ```
      NOTA: Se for o teu primeiro commit no PC e der erro a pedir quem és, corre `git config --global use.name` e `git config --global o-teu-email@exemplo.com`, e repete o `commit` e o `push`. 

---

## 🚨 Regras para não fazeres asneiras
* **Lê antes de fazer `git push`:** Quando fazes `git commit`, o terminal diz-te o que foi criado ou apagado. Se vires lá um `delete` que não querias, **NÃO faças `git push`** e pede ajuda!
* **Nunca apagues pastas à toa:** Antes de apagar seja o que for no PC, garante que fizeste `git pull` para teres tudo atualizado.

--- 
## Sobreviveste ao guia! 🎉 

Estás oficialmente pronto para dominar o Git sem partir o computador. E lembra-te: se alguma coisa correr mal ou aparecer um erro que não compreendas no ecrã, **passa pelo NECC e vai aos workshops!** Eles ajudam-te tal e qual como fizeram comigo! ✨
