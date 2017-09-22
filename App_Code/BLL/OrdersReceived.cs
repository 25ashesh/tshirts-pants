using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OrdersReceived
/// </summary>
public class OrdersReceived
{
	public OrdersReceived()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetTable()
    {

        return DAO.GetTable("select * from tblOrder", CommandType.Text, null);
    }

}