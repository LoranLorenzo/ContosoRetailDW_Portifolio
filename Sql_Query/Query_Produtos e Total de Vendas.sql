USE ContosoRetailDW
/*Nome dos produtos que mais venderam, com seu total de vendas e ranqueado*/

SELECT Top 5 
	
	P.ProductName AS 'Nome Produto'
	,Format(SUM(S.SalesAmount),'C0') AS 'Total de Vendas',
	rank() 
		over (order by SUM(S.SalesAmount) desc) as 'Rank'
	
FROM FactOnlineSales AS S
	
	INNER JOIN DimProduct AS P ON S.ProductKey = P.ProductKey
	GROUP BY  P.ProductName
	ORDER BY SUM(S.SalesAmount) DESC
	