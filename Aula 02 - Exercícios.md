# **Lista de Exercícios - Modelagem de Banco de Dados**  

## **1. Conceitos Básicos de Entidades e Relacionamentos**  
- **1:** Explique a diferença entre uma entidade e uma ocorrência de entidade. Exemplifique.  
- **2:** O que é o papel de uma entidade em um relacionamento? Quando é necessário especificar o papel das entidades em um relacionamento?  

## **2. Análise de Relacionamentos e Cardinalidades**  
![image](https://github.com/user-attachments/assets/c39bafeb-0b6b-4f0d-a683-ceff6d94b2d1)

- **3:** Considere o relacionamento **CASAMENTO** da Figura acima. O modelo permite que:  
  - Uma pessoa esteja casada consigo mesma?  
  - A mesma pessoa apareça em dois casamentos diferentes, uma vez como marido e outra vez como esposa?  
  - Caso alguma dessas situações possa ocorrer, modifique o DER para impedi-la. 

![image](https://github.com/user-attachments/assets/c7336d5c-d3c9-4cc2-a064-39271a2c90c2)
- **4:** Confeccione um **diagrama de ocorrências** para o relacionamento **SUPERVISÃO** (Figura acima) e suas respectivas entidades.

![image](https://github.com/user-attachments/assets/ec8dee38-ff08-40c3-916c-2b2760166a9b)
- **5:** Confeccione um **diagrama de ocorrências** para o relacionamento **COMPOSIÇÃO** (Figura acima) e suas respectivas entidades.

![image](https://github.com/user-attachments/assets/a6f6acd1-1174-4863-9ce7-c04cd39d65fe)
- **6:** Mostre como o modelo ER da Figura acima pode ser representado sem o uso de relacionamentos ternários, apenas usando relacionamentos binários.

## **3. Relacionamentos Ternários e Identificadores**  
- **7:** Dê um exemplo de um **relacionamento ternário** e mostre como a mesma realidade pode ser modelada usando apenas relacionamentos binários.  
- **8:** Para o exemplo de relacionamento ternário criado na questão anterior, justifique a escolha das **cardinalidades mínima e máxima**. 

![image](https://github.com/user-attachments/assets/7dd4da0b-b4f1-41fe-9cf2-27a97284ad78)
- **9:** Considere o DER da Figura acima Para que a **restrição de cardinalidade mínima** seja obedecida, quais ocorrências de entidade devem existir no banco de dados quando for incluída:  
  - Uma ocorrência de **EMPREGADO**?  
  - Uma ocorrência de **MESA**?  

## **4. Transformação de Modelos e Restrições de Cardinalidade**  
![image](https://github.com/user-attachments/assets/b00755cc-49c6-4623-bbfd-535c5878dbf3)
- **10:** Construa um **DER** que modele a mesma realidade do DER da Figura acima usando apenas **relacionamentos 1:n**. 

![image](https://github.com/user-attachments/assets/1c08fe76-b1f2-426e-a315-b9295afeaf02)
- **11:** Considere o relacionamento **EMPREGADO-DEPENDENTE** (Figura acima). Se um **dependente de um empregado** puder ser também empregado, como modificar o modelo para evitar **armazenamento redundante**? 

## **5. Identificadores de Entidades e Entidades Associativas**  
- **12:** Invente exemplos de entidades com diferentes tipos de identificadores:  
  - Uma entidade cujo identificador é composto por um único atributo.  
  - Uma entidade cujo identificador é composto por mais de um atributo.  
  - Uma entidade cujo identificador é composto por **relacionamentos**.  
  - Uma entidade cujo identificador é composto por **atributos e relacionamentos**.  
- **13:** Construa um **DER** utilizando o conceito de **entidade associativa**.  
- **14:** Dê ao menos **três exemplos** de entidades com **relacionamentos identificadores (entidades fracas)**.  

## **6. Restrições de Cardinalidade e Modelagem Alternativa**  

![image](https://github.com/user-attachments/assets/357a3313-befd-4827-a080-b70ae959f639)
- **15:** Considere o exemplo da Figura acima. Modifique as **cardinalidades mínimas** para especificar que:  
  - Um **curso** não pode estar vazio e deve possuir pelo menos uma disciplina.  
  - Um **aluno** pode permanecer no banco de dados mesmo sem estar inscrito em um curso.
  - 
![image](https://github.com/user-attachments/assets/f230fda3-1aa7-4b38-bf90-90a762ec1ce7)
- **16:** Construa um **DER** contendo as mesmas informações do DER da Figura acima, sem utilizar:  
  - Atributos opcionais.  
  - Atributos multivalorados. 

## **7. Generalização e Especialização**  
![image](https://github.com/user-attachments/assets/b4fbfeb3-b4a3-4f7c-9a25-0da773a781d2)
- **17:** O DER da Figura acima modela uma **generalização/especialização compartilhada**. Construa um DER que represente a mesma realidade **sem usar esse conceito**.

![image](https://github.com/user-attachments/assets/7d6fba11-f9a2-4c5a-99ea-96111dd335c7)
- **18:** Para cada um dos **quatro tipos de generalização/especialização** (Tabela acima):  
  - Conceba um exemplo de realidade que necessite desse tipo.  
  - Construa um **DER** correspondente.  

## **8. Análise e Nomeação de Modelos de Dados**
![image](https://github.com/user-attachments/assets/50a49121-e0f4-40fd-adce-03f025a95269)  
- **19:** A Figura acima apresenta um modelo de dados para uma **farmácia**. Descreva tudo o que está representado nesse diagrama.  
- **20:** Invente **nomes** para os relacionamentos do DER da Figura acima.  

## **9. Análise e Modificação de DERs**  

- **21:** Justifique as **cardinalidades mínimas** do relacionamento entre **FORNECEDOR** e **FABRICANTE** no DER da Figura acima (**FARMACIA**).  
- **22:** Explique o significado das **cardinalidades mínima e máxima** dos relacionamentos entre **MEDICAMENTO, VENDA e RECEITA MÉDICA** no DER da Figura acima (**FARMACIA**).   
- **23:** No modelo ER da Figura acima (**FARMACIA**), cada venda deve envolver ao menos um produto. Esta restrição está expressa no modelo? Se não, modifique o DER para incluí-la.  
- **24:** Para cada entidade e cada relacionamento no DER da Figura acima (**FARMACIA**), defina atributos e identificadores. 

![image](https://github.com/user-attachments/assets/d75575eb-7642-44d0-81fd-bf8a0bbc1a01) 
- **25:** A Figura acima apresenta um DER de um sistema de **recursos humanos**. Descreva tudo que está representado nesse diagrama.  
- **Exercício 2.26:** Para cada entidade e relacionamento no DER da Figura acima, defina atributos e identificadores, quando possível.  
- **Exercício 2.27:** No DER da Figura acima, que ações devem ser tomadas ao excluir uma **secretária** do banco de dados? 
- **Exercício 2.28:** No DER da Figura acima, **secretárias e engenheiros** não podem ser gerentes. Por quê? Como modificar o DER para permitir que secretárias e engenheiros também possam ser gerentes?  

---

## **Referências**  
Heuser, Carlos Alberto. **Projeto de Banco de Dados (Portuguese Edition).**  
- p. 29-64. 

---
