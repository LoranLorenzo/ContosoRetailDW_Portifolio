Use ContosoRetailDW
/* Categorias e Total de Vendas*/

SELECT Top 5
	
	PC.ProductCategoryName AS 'Categorias de Produtos'
	,FORMAT(SUM(S.SalesAmount), 'C0') AS 'Total de Vendas'

FROM FactOnlineSales AS S
	
	INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
	INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey= P.ProductSubcategoryKey
	INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey

GROUP BY 
	PC.ProductCategoryName
ORDER BY 
	SUM(S.SalesAmount) DESC
