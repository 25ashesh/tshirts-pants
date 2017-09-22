using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payment
/// </summary>
public class Payment
{
    public Payment()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int PaymentInfo(string NameOnCard, string CardNumber, string CardVendor, string CardType, string ExpiryMonth, string ExpiryYear, string BillingZip, string ShippingAddress, string MobileNo, string Email)
    {
        SqlParameter[] param = new SqlParameter[]
        {
            new SqlParameter("@NameOnCard",NameOnCard),
            new SqlParameter("@CardNumber",CardNumber),
            new SqlParameter("@CardVendor",CardVendor),
            new SqlParameter("@CardType",CardType),
            new SqlParameter("@ExpiryMonth",ExpiryMonth),
            new SqlParameter("@ExpiryYear",ExpiryYear),
            new SqlParameter("@BillingZip",BillingZip),
            new SqlParameter("@ShippingAddress",ShippingAddress),
            new SqlParameter("@MobileNo",MobileNo),
            new SqlParameter("@Email",Email)
            
        };
        return DAO.IDU("insert into tblPaymentInfo values(@NameOnCard,@CardNumber,@CardVendor,@CardType,@ExpiryMonth,@ExpiryYear,@BillingZip,@ShippingAddress,@MobileNo,@Email)", CommandType.Text, param);
    }
}