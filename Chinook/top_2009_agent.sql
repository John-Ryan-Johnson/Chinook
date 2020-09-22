--19. Which sales agent made the most in sales in 2009? HINT: TOP

Select Top 1 Employee.FirstName + ' ' + Employee.LastName as [Employee Name],
	(Select sum(Total)
		From Invoice
			join Customer
			On Invoice.CustomerId = Customer.CustomerId	
		Where Customer.SupportRepId = Employee.EmployeeId and Year(Invoice.InvoiceDate) = 2009
		) As TotalSales
			From Employee
				Order By TotalSales desc

