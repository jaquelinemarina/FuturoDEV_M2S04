-- 1. Encontrar todos os clientes cujo nome começa com a letra 'A'
select * from clientes where nome like 'A%'

-- 2. Calcular o valor total de pedidos para cada cliente
select cliente_id SUM(valor) from pedidos group by cliente_id

-- 3. Encontrar a média de idade dos clientes em cada cidade
select cidade avg(idade) from clientes group by cidade
