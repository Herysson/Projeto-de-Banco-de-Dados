# **Lista de Exercícios - Modelagem de Banco de Dados**  

## **1. Conceitos Básicos de Entidades e Relacionamentos**  
- **1:** Explique a diferença entre uma entidade e uma ocorrência de entidade. Exemplifique.  
- **Exercício 2.2:** O que é o papel de uma entidade em um relacionamento? Quando é necessário especificar o papel das entidades em um relacionamento?  

## **2. Análise de Relacionamentos e Cardinalidades**  
- **Exercício 2.3:** Considere o relacionamento **CASAMENTO** da Figura 2.7 (p. 29). O modelo permite que:  
  - Uma pessoa esteja casada consigo mesma?  
  - A mesma pessoa apareça em dois casamentos diferentes, uma vez como marido e outra vez como esposa?  
  - Caso alguma dessas situações possa ocorrer, modifique o DER para impedi-la. *(Solução → p. 296)*  
- **Exercício 2.4:** Confeccione um **diagrama de ocorrências** para o relacionamento **SUPERVISÃO** (Figura 2.8 → p. 30) e suas respectivas entidades. *(Solução → p. 296)*  
- **Exercício 2.5:** Confeccione um **diagrama de ocorrências** para o relacionamento **COMPOSIÇÃO** (Figura 2.9 → p. 32) e suas respectivas entidades.  
- **Exercício 2.6:** Mostre como o modelo ER da Figura 2.11 (p. 34) pode ser representado sem o uso de relacionamentos ternários, apenas usando relacionamentos binários. *(Solução → p. 297)*  

## **3. Relacionamentos Ternários e Identificadores**  
- **Exercício 2.7:** Dê um exemplo de um **relacionamento ternário** e mostre como a mesma realidade pode ser modelada usando apenas relacionamentos binários.  
- **Exercício 2.8:** Para o exemplo de relacionamento ternário criado na questão anterior, justifique a escolha das **cardinalidades mínima e máxima**.  
- **Exercício 2.9:** Considere o DER da Figura 2.12. Para que a **restrição de cardinalidade mínima** seja obedecida, quais ocorrências de entidade devem existir no banco de dados quando for incluída:  
  - Uma ocorrência de **EMPREGADO**?  
  - Uma ocorrência de **MESA**?  

## **4. Transformação de Modelos e Restrições de Cardinalidade**  
- **Exercício 2.10:** Construa um **DER** que modele a mesma realidade do DER da Figura 2.16 (p. 41) usando apenas **relacionamentos 1:n**. *(Solução → p. 300)*  
- **Exercício 2.11:** Considere o relacionamento **EMPREGADO-DEPENDENTE** (Figura 2.20 → p. 43). Se um **dependente de um empregado** puder ser também empregado, como modificar o modelo para evitar **armazenamento redundante**? *(Solução → p. 300)*  

## **5. Identificadores de Entidades e Entidades Associativas**  
- **Exercício 2.12:** Invente exemplos de entidades com diferentes tipos de identificadores:  
  - Uma entidade cujo identificador é composto por um único atributo.  
  - Uma entidade cujo identificador é composto por mais de um atributo.  
  - Uma entidade cujo identificador é composto por **relacionamentos**.  
  - Uma entidade cujo identificador é composto por **atributos e relacionamentos**.  
- **Exercício 2.13:** Construa um **DER** utilizando o conceito de **entidade associativa**.  
- **Exercício 2.14:** Dê ao menos **três exemplos** de entidades com **relacionamentos identificadores (entidades fracas)**.  

## **6. Restrições de Cardinalidade e Modelagem Alternativa**  
- **Exercício 2.15:** Considere o exemplo da Figura 2.13 (p. 37). Modifique as **cardinalidades mínimas** para especificar que:  
  - Um **curso** não pode estar vazio e deve possuir pelo menos uma disciplina.  
  - Um **aluno** pode permanecer no banco de dados mesmo sem estar inscrito em um curso.  
- **Exercício 2.16:** Construa um **DER** contendo as mesmas informações do DER da Figura 2.15 (p. 40), sem utilizar:  
  - Atributos opcionais.  
  - Atributos multivalorados. *(Solução → p. 301)*  

## **7. Generalização e Especialização**  
- **Exercício 2.17:** O DER da Figura 2.28 (p. 51) modela uma **generalização/especialização compartilhada**. Construa um DER que represente a mesma realidade **sem usar esse conceito**. *(Solução → p. 302)*  
- **Exercício 2.18:** Para cada um dos **quatro tipos de generalização/especialização** (Tabela 2.1 → p. 52):  
  - Conceba um exemplo de realidade que necessite desse tipo.  
  - Construa um **DER** correspondente.  

## **8. Análise e Nomeação de Modelos de Dados**  
- **Exercício 2.19:** A Figura 2.35 (p. 62) apresenta um modelo de dados para uma **farmácia**. Descreva tudo o que está representado nesse diagrama.  
- **Exercício 2.20:** Invente **nomes** para os relacionamentos do DER da Figura 2.35 (p. 62).  

## **9. Análise e Modificação de DERs**  
- **Exercício 2.21:** Justifique as **cardinalidades mínimas** do relacionamento entre **FORNECEDOR** e **FABRICANTE** no DER da Figura 2.35 (p. 62).  
- **Exercício 2.22:** Explique o significado das **cardinalidades mínima e máxima** dos relacionamentos entre **MEDICAMENTO, VENDA e RECEITA MÉDICA** no DER da Figura 2.35 (p. 62).  
- **Exercício 2.23:** No modelo ER da Figura 2.35 (p. 62), cada venda deve envolver ao menos um produto. Esta restrição está expressa no modelo? Se não, modifique o DER para incluí-la.  
- **Exercício 2.24:** Para cada entidade e cada relacionamento no DER da Figura 2.35 (p. 62), defina atributos e identificadores.  
- **Exercício 2.25:** A Figura 2.36 (p. 63) apresenta um DER de um sistema de **recursos humanos**. Descreva tudo que está representado nesse diagrama.  
- **Exercício 2.26:** Para cada entidade e relacionamento no DER da Figura 2.36 (p. 63), defina atributos e identificadores, quando possível.  
- **Exercício 2.27:** No DER da Figura 2.36 (p. 63), que ações devem ser tomadas ao excluir uma **secretária** do banco de dados? *(Solução → p. 304)*  
- **Exercício 2.28:** No DER da Figura 2.36 (p. 63), **secretárias e engenheiros** não podem ser gerentes. Por quê? Como modificar o DER para permitir que secretárias e engenheiros também possam ser gerentes?  

---

## **Referências**  
Heuser, Carlos Alberto. **Projeto de Banco de Dados (Portuguese Edition).**  
- p. 29-64. 

---
