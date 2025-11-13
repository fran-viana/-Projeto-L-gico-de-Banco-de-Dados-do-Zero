 Banco de Dados — Oficina Mecânica
 Projeto do Desafio de Modelagem e SQL (DIO)

Este repositório contém o esquema lógico, implementação SQL, inserção de dados e consultas complexas referentes ao sistema de uma oficina mecânica.
O projeto foi desenvolvido para o desafio de banco de dados da DIO.

 Descrição do Projeto

O objetivo deste desafio é construir, do zero:

O esquema lógico de um banco de dados para uma oficina.

O script SQL completo de criação das tabelas (schema).

O script de inserção de dados para testes.

E diversas queries SQL complexas, usando:

SELECT

WHERE

ORDER BY

GROUP BY

HAVING

JOINs

Atributos derivados

A modelagem contempla clientes, veículos, mecânicos, serviços, oficinas e ordens de serviço.

 Modelagem Lógica
Entidades principais:

Cliente

Veículo

Mecânico

Serviço

Oficina

Ordem de Serviço

Relacionamentos:

Cliente (1:N) Veículo

Cliente (1:N) Ordem de Serviço

Mecânico (1:N) Ordem de Serviço

Veículo (1:N) Ordem de Serviço

Oficina (N:N) Serviço → via tabela associativa Servico_has_Oficina

 Arquivos do Repositório
Arquivo	Descrição
schema.sql	Estrutura completa do banco (DROPs + CREATE TABLEs).
inserts.sql	Dados iniciais para testes.
consultas.sql	Consultas SQL com SELECT, WHERE, HAVING, JOIN, ORDER BY etc.
README.md	Documentação completa do projeto.
 Tecnologias Utilizadas

MySQL 8.0

Testado no DB Fiddle: https://dbfiddle.uk

Linguagem SQL

 Como Executar o Projeto

Acesse https://dbfiddle.uk

No topo, selecione: MySQL 8.0

Cole o conteúdo de schema.sql no campo Schema SQL

Clique em Build Schema

Cole o conteúdo de inserts.sql no campo Query SQL

Clique em Run

Em seguida, execute o conteúdo de consultas.sql para testar

 Consultas Respondidas

As queries do arquivo consultas.sql respondem perguntas como:

Quais clientes possuem mais veículos?

Qual oficina oferece mais tipos de serviço?

Qual o valor total de serviços realizados em uma ordem?

Qual a média de preço dos serviços por oficina?

Quais ordens de serviço foram emitidas em determinado período?

Quais mecânicos realizaram mais atendimentos?

 Funcionalidades Atendidas

✔ SELECT simples
✔ Filtros com WHERE
✔ Atributos derivados
✔ ORDER BY
✔ Junções entre múltiplas tabelas
✔ GROUP BY
✔ HAVING
✔ Consultas úteis para negócios reais

 Autora

Fran-viana
Projeto desenvolvido para o desafio de banco de dados da DIO.
