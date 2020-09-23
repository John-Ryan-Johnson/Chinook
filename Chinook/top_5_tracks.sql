--25. Provide a query that shows the top 5 most purchased songs.

SELECT TOP(5) Track.Name, COUNT(InvoiceLine.Quantity) AS [Times Purchased]
	FROM InvoiceLine
		JOIN Track
			ON InvoiceLine.TrackId = Track.TrackId
				JOIN Invoice
					ON InvoiceLine.InvoiceId = Invoice.InvoiceId
						GROUP BY Track.Name
							ORDER BY [Times Purchased] DESC
		