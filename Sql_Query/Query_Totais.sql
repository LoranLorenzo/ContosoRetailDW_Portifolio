Use ContosoRetailDW

/* Total Vendas, Total Custo, Total Quantidade, Total Lucro*/
Select
	Format(Sum(S.SalesAmount), 'C0') AS 'Total de Vendas',
	Format(Sum(S.TotalCost), 'C0') AS 'Total de Custo',
	Format(Sum(S.SalesQuantity), 'C0') AS 'Total de Quantidade',
	Format(Sum(S.SalesAmount) - Sum(S.TotalCost), 'C0') As 'Total de Lucro'
From FactOnlineSales AS S
