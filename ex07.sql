-- Função agregada: Média de idade dos clientes com pedidos superiores a R$300,00
SELECT AVG(C.Idade) AS MediaIdade
FROM Clientes C
JOIN Pedidos P ON C.ClienteID = P.ClienteID
WHERE P.ValorTotal > 300.00

-- Subconsulta: Produtos pedidos mais de uma vez
SELECT P.ProdutoID, P.NomeProduto
FROM Produtos P
WHERE P.ProdutoID IN (
    SELECT IP.ProdutoID
    FROM ItensPedidos IP
    GROUP BY IP.ProdutoID
    HAVING COUNT(IP.ProdutoID) > 1
)
