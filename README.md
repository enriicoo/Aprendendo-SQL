# Aprendendo SQL

Exercícios realizados para o aprendizado e testagem de comandos da linguagem SQL. Aqui, reuni conteúdo compilado com os comandos mais comuns e um exemplo nos arquivos acima com uma Database de pokémons.

Para criar Bancos ou Tabelas:
```
CREATE DATABASE db_ex
USE exemplo;
CREATE TABLE t_ex (
	id             INT AUTO_INCREMENT,
	nome_produto   VARCHAR(50) NOT NULL,
        PRIMARY KEY (id),
);
```
Ações de interesse:

- Editar informações no database:
```
CREATE DATABASE db_name
USE db_name
CREATE TABLE table_name
ALTER TABLE table_name
ADD column_name DTYPE
DROP TABLE table_name
```
- Dentro das tabelas
```
Considerar primary keys, auto-incrementações nas chaves de identidade da tabela
Considerar foreign keys, importantes principalmente para conectar múltiplas tabelas
INSERT INTO table_1 (col_x) VALUES ('value');
UPDATE table_1 SET col_x = y WHERE id = y # atualiza valores selecionados de colunas
DELETE FROM table_name WHERE id > y
```
- Visualizar dados
```
SELECT * (ou table.col_x) FROM table_1 ORDER BY columnX DESC (ou ASC)
SELECT DISTINCT col_x  FROM table_1 #retorna nomes únicos de uma coluna
SELECT AVG(col_x) FROM table_1
```
- Usando join e criando novas tabelas a partir do join
```
SELECT * FROM table1 JOIN table2 ON table1.col_x = table2.col_y #considerar right, left, inner, outer joins
SELECT * INTO NewTable FROM table1 LEFT OUTER JOIN table2 ON table1.col_x = table2.col_y
```

### Conteúdo utilizado para a criação destes testes:

- https://github.com/WebDevSimplified/Learn-SQL
- https://github.com/gabrieldarezzo/inwork-sql
- http://sqlfiddle.com/
