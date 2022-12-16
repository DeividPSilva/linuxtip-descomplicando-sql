-- Databricks notebook source
SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

-- Primeira forma

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY 2


-- COMMAND ----------

-- Segunda forma

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado

-- COMMAND ----------

-- Quarta forma

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)


-- COMMAND ----------

-- Quinta forma

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC

-- COMMAND ----------

-- Sexta forma apenas TOP 1

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC

LIMIT 1
