using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PaymentReceived
/// </summary>
public class PaymentReceived
{
	public PaymentReceived()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetPaymentInfoTable()
    {

        return DAO.GetTable("select tblPaymentInfo.PaymentId, tblOrder.OrderId, tblOrder.price as Cost from tblOrder join tblPaymentInfo on tblOrder.OrderId=tblPaymentInfo.PaymentId", CommandType.Text, null);
    }
    public DataTable ShowPaymentInfo() {
        return DAO.GetTable("select * from tblPaymentInfo",CommandType.Text,null);
    }
}