
--Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT FirstName + ' ' + LastName AS FullName, InvoiceId, InvoiceDate, BillingCountry
	FROM Customer
		join Invoice
			on Customer.CustomerId = Invoice.CustomerId
				WHERE Invoice.BillingCountry like 'Brazil'

