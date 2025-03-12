# **Atividade** 

Caros alunos,  

Para aprofundarmos o entendimento sobre modelagem de dados, formem grupos de **2 a 3 pessoas** e desenvolvam o **Modelo Entidade-Relacionamento (MER)** para o sistema de controle acadêmico apresentado.  

O modelo deve conter:  
✅ **Entidades** principais do sistema;  
✅ **Relacionamentos** entre as entidades;  
✅ **Cardinalidades (mínima e máxima)** para cada relacionamento.  


## **Sistema de Controle Acadêmico de uma Universidade Fictícia** 
- Deseja-se manter informações sobre alunos, cursos, disciplinas e departamentos.  
- Além disso, deseja-se manter informações sobre:  
  - A inscrição de alunos em cursos;  
  - A responsabilidade de departamentos sobre disciplinas;  
  - A associação de disciplinas a cursos;  
  - A associação de disciplinas a suas disciplinas pré-requisitos.  

### **Cardinalidades**  

- **Departamentos e Disciplinas**  
  - Cada disciplina possui exatamente um departamento responsável.  
  - Um departamento pode ser responsável por muitas disciplinas, inclusive por nenhuma.  

  Note-se que, apesar de sabermos que os departamentos em uma universidade existem para ser responsáveis por disciplinas, especificamos a cardinalidade mínima de **DEPARTAMENTO** em **RESPONSÁVEL** como sendo **0**.  
  - Com isso, admitimos a possibilidade de existirem departamentos vazios.  
  - Essa cardinalidade foi especificada considerando o estado do banco de dados imediatamente após a criação de um novo departamento, bem como o estado imediatamente após a eliminação da última disciplina de um departamento.  
  - Da forma como a restrição foi especificada, é possível incluir o departamento em uma transação para, depois, em transações subsequentes, vinculá-lo às disciplinas sob sua responsabilidade.  
  - Se tivesse sido especificada a cardinalidade mínima **1**, ao menos uma disciplina teria que ser vinculada ao departamento já na própria transação de inclusão do departamento.  

  Como observado na discussão acima, para especificar as cardinalidades mínimas, é necessário possuir conhecimento sobre a ordem de execução das transações de inclusão e exclusão das entidades.  

- **Disciplinas e Pré-requisitos**  
  - Uma disciplina pode possuir diversos pré-requisitos, inclusive nenhum.  
  - Uma disciplina pode ser pré-requisito de muitas outras disciplinas, inclusive de nenhuma.  

- **Disciplinas e Cursos**  
  - Uma disciplina pode aparecer no currículo de muitos cursos, inclusive de nenhum.  
  - Um curso pode possuir muitas disciplinas em seu currículo, inclusive nenhuma.  

- **Alunos e Cursos**  
  - Um aluno está inscrito em exatamente um curso.  
  - Um curso pode ter nele inscritos muitos alunos, inclusive nenhum.  

### **Referência**  

HEUSER, Carlos Alberto. *Projeto de Banco de Dados*.

