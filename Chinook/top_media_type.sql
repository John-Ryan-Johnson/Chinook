--27. Provide a query that shows the most purchased Media Type.

SELECT TOP(1) MediaType.Name AS MediaType, COUNT(*) AS [Number Sold]
FROM Track
	JOIN MediaType
		ON Track.MediaTypeId = MediaType.MediaTypeId
			JOIN InvoiceLine
				ON InvoiceLine.TrackId = Track.TrackId
					GROUP BY MediaType.Name