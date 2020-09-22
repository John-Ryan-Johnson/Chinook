--17. Provide a query that shows all Invoices but includes the # of invoice line items.

Select Invoice.InvoiceId, Count(InvoiceLine.InvoiceLineId) as LineItems
	From Invoice
		join InvoiceLine
			On Invoice.InvoiceId = InvoiceLine.InvoiceId
				Group by Invoice.InvoiceId