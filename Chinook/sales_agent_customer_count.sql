--21. Provide a query that shows the count of customers assigned to each sales agent.

SELECT Employee.FirstName + ' ' + Employee.LastName AS [Sales Agent],COUNT(Customer.CustomerId) AS [Customer Count]
		FROM Employee
			JOIN Customer
				ON Employee.EmployeeId = Customer.SupportRepId
					GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName

