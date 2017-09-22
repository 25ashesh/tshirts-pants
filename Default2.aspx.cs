using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    Orders ords = new Orders();

    private static float total = 0;
    float a1type = 50;
    float a2type = 100;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            lblSubmitReport.Text = Request.QueryString["msg1"];
            this.lblSubmitReport.ForeColor = System.Drawing.Color.Green;
        }
        
        Label4.Enabled = false;
        if (CheckBox2.Checked == true || CheckBox3.Checked == true)
        {
            Label4.Enabled = false;

        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        if (total != 0) // || (CheckBox3.Checked == true ||  CheckBox2.Checked == true))
        {
            int i = ords.Shopping(CheckBox3.Checked ? true : false,
                ddlPant.SelectedValue, 
                ddlSize1.SelectedValue, 
                ddlColor1.SelectedValue,
                CheckBox2.Checked ? true : false,
                ddlShirt.SelectedValue,
                ddlSize2.SelectedValue,
                ddlColor2.SelectedValue,
                total
                );

                if (i > 0 )
                {
                    Response.Redirect("Default.aspx");
                }

        }
        else if (total == 0)//else if (CheckBox3.Checked == false && CheckBox2.Checked == false)
        {

            Label4.Text = "Please Choose the Items";
            this.Label4.ForeColor = System.Drawing.Color.White;
            this.Label4.BackColor = System.Drawing.Color.Red;

            CheckBox3.Focus();

        }

    }
    
    protected void PriceCalculate(object sender, EventArgs e)
    {
        if (CheckBox3.Checked)
        {
            int a1 = Int32.Parse(ddlPant.SelectedValue.ToString());
            float x = float.Parse(ddlSize1.SelectedValue.ToString());
            total += a1 * a1type * x;
        }

        if (CheckBox2.Checked)
        {
            int a2 = Int32.Parse(ddlShirt.SelectedValue.ToString());
            float x = float.Parse(ddlSize2.SelectedValue.ToString());
            total += a2 * a2type * x;
        }
        Math.Floor(total);
        Label1.Text = "Total price is: $" + total + ".";
        this.Label1.ForeColor = System.Drawing.Color.WhiteSmoke;
        this.Label1.BackColor = System.Drawing.Color.LightGreen;
        this.Label1.BorderColor = System.Drawing.Color.Chocolate;
    }
}
