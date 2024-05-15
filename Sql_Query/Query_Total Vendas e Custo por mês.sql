Use ContosoRetailDW
/*Total Vendas e Custo por mês*/
SELECT
	Format(SUM(S.SalesAmount),'C0') AS 'Total Venda'
	,DATEPART(MONTH, S.DateKey) AS Mês
	,Format(SUM(S.TotalCost),'C0') AS 'Total Custo'
FROM FactOnlineSales AS S
Group By DATEPART(MONTH, S.DateKey)