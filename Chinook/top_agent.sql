--20. Which sales agent made the most in sales over all?

Select Top 1 Employee.FirstName + ' ' + Employee.LastName As [Sales Agent],
	(Select sum(Total)
		From Invoice
			Join Customer
				On Invoice.CustomerId = Customer.CustomerId
					Where Customer.SupportRepId = Employee.EmployeeId
					) As TotalSales
						From Employee
							Order By TotalSales desc

