--26. Provide a query that shows the top 3 best selling artists.

SELECT TOP(3) Artist.Name, COUNT(*) AS [Tracks Sold]
FROM InvoiceLine
		JOIN Track
			ON InvoiceLine.TrackId = Track.TrackId
		JOIN Album
			ON Album.AlbumId = Track.AlbumId
		JOIN Artist
			ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY [Tracks Sold] DESC
