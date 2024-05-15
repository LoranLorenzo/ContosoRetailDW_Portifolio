USE ContosoRetailDW
/* Lojas online que mais venderam*/

SELECT
	
	 ST.StoreName
	,FORMAT(SUM(S.SalesAmount),'C0') AS 'Total de Vendas'

FROM FactOnlineSales AS S
	
	INNER JOIN DimStore AS ST ON S.StoreKey = ST.StoreKey
	GROUP BY ST.StoreName
	ORDER BY SUM(S.SalesAmount) DESC