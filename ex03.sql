-- 1. Selecionar todos os clientes que moram em 'São Paulo'
select * from clientes where cidade = 'São Paulo'

-- 2. Listar todos os pedidos, ordenados pela data_pedido em ordem decrescente
select * from pedidos order by data_pedido desc

-- 3. Encontrar todos os clientes com idade entre 25 e 35 anos
select * from clientes where idade between 25 and 35
