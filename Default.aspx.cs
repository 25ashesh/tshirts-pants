using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    OrdersReceived orcd = new OrdersReceived();
    Payment pmt = new Payment();
    //int totalPrice = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

            //totalPrice = Convert.ToInt32( Request.QueryString["total"].ToString());
            //lblTotalPrice.Text = totalPrice.ToString();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

            int i = pmt.PaymentInfo(txtNameOnCard.Text, txtCCNumber.Text, ddlCardType.SelectedValue.ToString(), ddlCard.SelectedValue.ToString(), ddlmonth.SelectedValue.ToString(), ddlyear.SelectedValue.ToString(), TextBox1.Text, txtShippingAddress.Text, txtContactInfo.Text, txtEmail.Text);
            if (i > 0)
            {
                string msg1 = "Your order has been sucessfully placed!";
                Response.Redirect("Default2.aspx?msg1=" + Server.UrlEncode(msg1));
            }

    }

}