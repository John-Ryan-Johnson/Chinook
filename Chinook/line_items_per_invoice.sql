--11. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT InvoiceId, Count(*) as "Line Items"
	FROM InvoiceLine
		GROUP BY InvoiceId