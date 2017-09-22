using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    OrdersReceived orcd = new OrdersReceived();
    PaymentReceived prcd = new PaymentReceived();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGrid();   
        }
    }
    public void LoadGrid() {

        DataTable dt = orcd.GetTable();
        DataTable dt1 = prcd.GetPaymentInfoTable();
        DataTable dt2 = prcd.ShowPaymentInfo();
        if (dt.Rows.Count>0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        if (dt1.Rows.Count > 0)
        {
            GridView2.DataSource = dt1;
            GridView2.DataBind();
        }
        if (dt2.Rows.Count > 0)
        {
            GridView3.DataSource = dt2;
            GridView3.DataBind();
        }
    }
}