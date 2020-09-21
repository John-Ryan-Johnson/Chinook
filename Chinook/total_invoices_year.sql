--8. How many Invoices were there in 2009 and 2011?

Select Count(*)
	FROM Invoice
		Where Invoice.InvoiceDate Like '%2009%'
			Or Invoice.InvoiceDate Like '%2011%'