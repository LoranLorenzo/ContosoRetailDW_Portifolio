Use ContosoRetailDW
/*Total Vendas e Custo por m�s*/
SELECT
	Format(SUM(S.SalesAmount),'C0') AS 'Total Venda'
	,DATEPART(MONTH, S.DateKey) AS M�s
	,Format(SUM(S.TotalCost),'C0') AS 'Total Custo'
FROM FactOnlineSales AS S
Group By DATEPART(MONTH, S.DateKey)