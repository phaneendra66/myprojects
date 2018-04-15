using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace GridRowcommand
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private void Filldata()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlDataAdapter da = new SqlDataAdapter("select * from emp", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "emp");
            Gridv1.DataSource = ds;
            Gridv1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==false)
            {
                Filldata();
            }

        }

        protected void Gridv1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString()=="cmddelete")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = (GridViewRow)Gridv1.Rows[rowindex];
                Control c = (Control)row.FindControl("Label1");
                Label l1 = (Label)c;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                con.Open();
                 string query="delete from emp where eno='"+l1.Text+"'";
                 SqlCommand cmd = new SqlCommand(query, con);
                 cmd.ExecuteNonQuery();
                 con.Close();
                 Filldata();
            }
                else if(e.CommandName.ToString()=="cmdselect")
                {
                    int rowindex = Convert.ToInt32(e.CommandArgument);
                    GridViewRow row = (GridViewRow)Gridv1.Rows[rowindex];
                    Label l1 = (Label)row.FindControl("Label1");
                    Label l2 = (Label)row.FindControl("Label2");
                    Label l3 = (Label)row.FindControl("Label3");
                    Lbleno.Text = l1.Text;
                    TextBox8.Text = l2.Text;
                    TextBox9.Text = l3.Text;
                }
            }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            GridViewRow row = Gridv1.FooterRow;
            TextBox t1 = (TextBox)row.FindControl("TextBox4");
            TextBox t2 = (TextBox)row.FindControl("TextBox5");
            TextBox t3 = (TextBox)row.FindControl("TextBox6");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            string query="insert into emp values('"+t1.Text+"','"+t2.Text+"','"+t3.Text+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Filldata();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            string query="update emp set ename='"+TextBox8.Text+"',salary='"+TextBox9.Text+"'where eno='"+Lbleno.Text+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Gridv1.EditIndex = -1;
            Filldata();
            Lbleno.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Gridv1.EditIndex = -1;
            Filldata();
            Lbleno.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";

        }

        protected void Gridv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Gridv1.PageIndex = e.NewPageIndex;
            Filldata();
            Lbleno.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }

        }
    }
