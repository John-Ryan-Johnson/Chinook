--13. Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT Track.Name AS "Track Name", Artist.Name AS Artist, InvoiceLine.InvoiceLineId AS "Line Item"
	FROM Track
		JOIN InvoiceLine
			ON InvoiceLine.TrackId = Track.TrackId
				Join Artist
					ON Artist.Name = Track.Composer
						ORDER BY Artist.Name