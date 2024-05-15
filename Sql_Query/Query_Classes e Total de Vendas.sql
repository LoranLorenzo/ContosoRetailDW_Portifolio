Use ContosoRetailDW
/*Classes e Total de Vendas*/

SELECT
	
	P.ClassName As 'Classes'
	,Format(SUM(S.SalesAmount), 'C0') AS 'Total de Vendas'

From FactOnlineSales AS S 
	
	Inner Join DimProduct AS P on P.ProductKey = S.ProductKey
	Group by P.ClassName
	Order by 'Total de Vendas' ASC