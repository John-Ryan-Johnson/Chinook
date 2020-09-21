--14. Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT Invoice.BillingCountry, Count(*) As "Number Of Invoices"
	FROM Invoice
		GROUP BY Invoice.BillingCountry