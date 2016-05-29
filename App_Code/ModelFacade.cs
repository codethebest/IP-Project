using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ModelFacade
/// </summary>
public class ModelFacade
{
    public Customer createCustomer(CustomerFormDTO dto)
    {
        Customer customerObject = new Customer();
        customerObject.customerID = dto.id;
        customerObject.customerName = dto.name;
        customerObject.customerSurname = dto.surname;
        customerObject.customerAdress = dto.address;
        customerObject.cutomerPhoneNumber = dto.phoneNum;
        customerObject.customerAltPhoneNuber = dto.altPhoneNum;
        customerObject.totalItems = dto.items;
        return customerObject;
    }

    public Technician createTechnician(TechnicianDTO dto)
    {
        Technician technicianObject = new Technician();
        technicianObject.technicianID = dto.id;
        technicianObject.technicianName = dto.name;
        technicianObject.technicianType = dto.type;
        return technicianObject;
    }

    public Parts createPart(PartsDTO dto)
    {
        Parts partObject = new Parts();
        partObject.partID = dto.id;
        partObject.partName = dto.name;
        partObject.partType = dto.type;
        partObject.manufacturer = dto.manufacturer;
        partObject.datePurchased = dto.datePurchased;
        partObject.price = dto.price;
        partObject.supplier = dto.supplier;
        partObject.inStock = dto.inStock;
        return partObject;
    }

    public Items createItem(ItemsDTO dto)
    {
        Items item = new Items();
        item.itemID = dto.itemID;
        item.custID = dto.custID;
        item.barcode = dto.barcode;
        item.itemType = dto.itemType;
        item.description = dto.description;
        item.model = dto.model;
        item.issue = dto.issue;
        item.dateIn = dto.dateIn;
        item.dateOut = dto.dateOut;
        return item;
    }

    public Jobs createJob(JobsDTO dto)
    {
        Jobs job = new Jobs();
        job.jobID = dto.jobID;
        job.itemID = dto.itemID;
        job.techID = dto.techID;
        job.dateAssigned = dto.dateAssigned;
        job.partID = dto.partID;
        job.hoursWorked = dto.hoursWorked;
        job.dateCompleted = dto.dateCompleted;
        return job;
    }

    public Invoices createInvoice(InvoicesDTO dto)
    {
        Invoices invoice = new Invoices();
        invoice.invoiceID = dto.invoiceID;
        invoice.jobID = dto.jobID;
        invoice.custID = dto.custID;
        invoice.custName = dto.custName;
        invoice.custSurname = dto.custSurname;
        invoice.itemID = dto.invoiceID;
        invoice.techID = dto.techID;
        invoice.techName = dto.techName;
        invoice.hoursWorked = dto.hoursWorked;
        invoice.billAmount = dto.billAmount;
        invoice.dateIssued = dto.dateIssued;
        return invoice;
    }

}