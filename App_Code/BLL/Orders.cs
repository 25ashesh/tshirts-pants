using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Orders
/// </summary>
public class Orders
{
    public Orders()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int Shopping(bool JeansOrdered,
        string JeansQuantity,
        string JeansSize,
        string JeansColor, 
        bool ShirtOrdered,
        string ShirtQuantity,
        string ShirtSize,
        string ShirtColor,
        float price)
    {
        SqlParameter[] param = new SqlParameter[]
        {
            new SqlParameter("@JeansOrdered",JeansOrdered),
            new SqlParameter("@JeansQuantity",JeansQuantity),
            new SqlParameter("@JeansSize",JeansSize),
            new SqlParameter("@JeansColor",JeansColor),
            new SqlParameter("@ShirtOrdered",ShirtOrdered),
            new SqlParameter("@ShirtQuantity",ShirtQuantity),
            new SqlParameter("@ShirtSize",ShirtSize),
            new SqlParameter("@ShirtColor",ShirtColor),
            new SqlParameter("@price",price)
            
        };
        return DAO.IDU("insert into tblOrder values(@JeansOrdered,@JeansQuantity,@JeansSize,@JeansColor,@ShirtOrdered,@ShirtQuantity,@ShirtSize,@ShirtColor,@price)", CommandType.Text, param);
    }

}