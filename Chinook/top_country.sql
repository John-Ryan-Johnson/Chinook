--23. Which country's customers spent the most?

SELECT TOP 1 Invoice.BillingCountry, SUM(Invoice.Total) AS [Total Sales]
	FROM Invoice
		GROUP BY Invoice.BillingCountry
			ORDER BY [Total Sales] DESC

