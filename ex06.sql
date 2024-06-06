-- 1. Encontrar o total de itens pedidos em cada mês
SELECT 
    DATE_TRUNC('month', data_pedido) AS mes,
    COUNT(*) AS total_itens
FROM itens_pedidos
GROUP BY DATE_TRUNC('month', data_pedido)

-- 2. Listar os clientes que não têm pedidos associados
SELECT *
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id
WHERE p.pedido_id IS NULL

-- 3. Encontrar o pedido de maior valor
SELECT *
FROM pedidos
ORDER BY valor DESC
LIMIT 1

-- 4. Encontrar o total de itens pedidos para cada produto
SELECT produto_id, SUM(quantidade) AS total_itens
FROM itens_pedidos
GROUP BY produto_id

-- 5. Calcular a soma dos valores dos pedidos para cada cliente que tenha feito mais de um pedido
SELECT cliente_id, SUM(valor) AS total_valor_pedidos
FROM pedidos
GROUP BY cliente_id
HAVING COUNT(pedido_id) > 1

-- 6. Encontrar o preço médio dos produtos em cada categoria
SELECT c.categoria_id, AVG(pr.preco) AS preco_medio
FROM produtos pr
INNER JOIN categorias c ON pr.categoria_id = c.categoria_id
GROUP BY c.categoria_id

-- 7. Encontrar o cliente que fez o pedido de maior valor
SELECT c.*
FROM clientes c
INNER JOIN pedidos p ON c.cliente_id = p.cliente_id
ORDER BY p.valor DESC
LIMIT 1
