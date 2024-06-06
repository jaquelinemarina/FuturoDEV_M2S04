-- 1. Listar todos os pedidos junto com as informações dos clientes, usando um INNER JOIN
SELECT p.*, c.*
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.cliente_id

-- 2. Retornar todos os clientes e seus pedidos, incluindo clientes que não fizeram pedidos (LEFT JOIN)
SELECT c.*, p.*
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id

-- 3. Retornar todos os produtos e seus itens pedidos, incluindo produtos que não foram pedidos (RIGHT JOIN)
SELECT pr.*, ip.*
FROM produtos pr
RIGHT JOIN itens_pedidos ip ON pr.produto_id = ip.produto_id

-- 4. Combinar duas consultas: clientes de 'São Paulo' e clientes de 'Rio de Janeiro' (UNION)
SELECT *
FROM clientes
WHERE cidade = 'São Paulo'
UNION
SELECT *
FROM clientes
WHERE cidade = 'Rio de Janeiro'
