using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ItemsDTO
/// </summary>
public class ItemsDTO
{
    public String itemID { set; get; }
    public String custID { set; get; }
    public String barcode { set; get; }
    public String itemType { set; get; }
    public String description { set; get; }
    public String model { set; get; }
    public String issue { set; get; }
    public String assignedToTechnician { set; get; }
    public String dateIn { set; get; }
    public String dateOut { set; get; }
}