Added print invoice code
Added validation Controls
Added table relarionships
Added search for jobs by technician ID for technicians
Added web service to calcualte bill amount for invoice; 
Added insert, update and delete for the following (using DTO and DAO)
Customers
Technicians
Parts
Items(book in, out, edit all works)
Jobs (issue Job, edit Job)
Job card (fill out the rest of the job table)
Invoice (Issue) * error does not select itemID linked to job and does not insert
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
	Jobs
		Search for all jobs
		Search for jobs by techID
		Search for completed jobs
		Search for uncompleted jobs
		search for jobs by job id
	invoices
		All invoices
		by custID
		by JobID

***********************************************************
custIDS start off as 1001
Invoice IDs start off as 2001
Item Ids start off as 3001
job id start off as 4001
part id starts off as 5001
technicianID starts off as 6001
**********************************************************
please sort this stuff below **********
Must still complete
validation must be done 
and 
exception handling has to done
technician table list (To show the job status)
invoice insert into db error
Add favicon, names for each page (layout) and membership AWSAT
SQL stored procedures should be made for
creating tables (Customers, invoice, items, jobs, parts, technicians) with joins
populating tables (Customers, invoice, items, jobs, parts, technicians)
Documentation with all of this
	Storyboard (Use MS-Visio)
	screen shots of the most important parts of your application,
	Design layout of your database (ER or Crows Foot).
	UML diagram of the different classes,the DTOs and Model facades within the web application.
	Code on CD/DVD with printed manual containing the abovementioned
	Login pages control by AWSAT and Masterpages.
