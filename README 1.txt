Added table relarionships
Added insert, update and delete for the following (using DTO and DAO)
Customers
Technicians
Parts
Items(book in, out, edit all works) * fixed all errors
Added reports for
	Customers
		customerID
		all customers
	Technicians
		by ID
		All
		by type
	parts
		all parts
		parts in Stock 
		Out of stock
	Items
		By CustID
		All Items
		Items not booked out
***********************************************************
IDs are auto generated - see custInsert.aspx for example
custIDS start off as 1001
Invoice IDs start off as 2001
Item Ids start off as 3001
job id start off as 4001
part id starts off as 5001
technicianID starts off as 6001
**********************************************************

Must still complete
insert, update and delete for:
Jobs(issue Job, Edit Job, no delete)   ------>>> for jobs table partID, date completed and hours worked should come from job card
Invoice(issue, no delete, no edit)
Technicians should be allowed to see their jobs only and fill in job cards --> maybe a search box should go here 
SQL stored procedures should be made
admin reports for
	Jobs
		Search for all jobs
		Search for jobs by techID
		Search for completed jobs
		search for jobs by custID
		search for jobs by job id
	invoices
		All invoices
		by custID
		by JobID