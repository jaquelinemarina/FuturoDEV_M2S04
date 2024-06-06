-- 1. Inserir um novo cliente na tabela clientes
insert into clientes (nome, cidade, idade)
values ('Lucas', 'Salvador', 29)

-- 2. Atualizar o campo cidade do cliente com cliente_id = 3
update clientes set cidade = 'Fortaleza' where cliente_id = 3

-- 3. Deletar todos os pedidos com valor inferior a 150.00
delete from pedidos where valor < 150.00
