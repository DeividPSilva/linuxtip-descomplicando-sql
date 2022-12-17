-- Databricks notebook source
-- DBTITLE 1,Exercícios 01
-- Qual categoria tem mais produtos vendidos?

SELECT T2.descCategoria,           -- contagem de linhas do produto
        COUNT(T1.idPedido)
        
FROM silver_olist.item_pedido AS T1 -- tabela de vendas

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria            -- group por produto
ORDER BY COUNT(T1.idPedido) DESC

LIMIT 1


-- COMMAND ----------

-- DBTITLE 1,Exercício 02
-- Qual categoria tem produtos mais caros, em média?

SELECT T2.descCategoria,
       AVG(T1.vlPreco),
       MAX(T1.vlPreco)

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY MAX(T1.vlPreco) DESC

-- COMMAND ----------

-- DBTITLE 1,Exercício 3
SELECT 
       T3.descUF,
       AVG(T1.vlFrete) AS avgFrete

FROM silver_olist.item_pedido as T1

LEFT JOIN silver_olist.pedido as T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente

GROUP BY T3.descUF

HAVING avgFrete > 40

ORDER BY avgFrete DESC


-- COMMAND ----------


