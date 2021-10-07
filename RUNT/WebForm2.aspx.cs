using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RUNT
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        // Creamos la instancia para la conexión SQL
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-AMUMB5AS;Initial Catalog=RuntBD;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ObtenerRegistros();
            }
        }

        void ObtenerRegistros()
        {
            SqlCommand comm = new SqlCommand("select * from InformacionGeneral", conn);
            SqlDataAdapter adpt = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            SqlCommand comm2 = new SqlCommand("select * from InformacionGeneralVehiculo", conn);
            SqlDataAdapter adpt2 = new SqlDataAdapter(comm2);
            DataTable dt2 = new DataTable();
            adpt2.Fill(dt2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();

            SqlCommand comm3 = new SqlCommand("select * from InformacionEspecificaVehiculo", conn);
            SqlDataAdapter adpt3 = new SqlDataAdapter(comm3);
            DataTable dt3 = new DataTable();
            adpt3.Fill(dt3);
            GridView3.DataSource = dt3;
            GridView3.DataBind();

            SqlCommand comm4 = new SqlCommand("select * from InformacionPersona", conn);
            SqlDataAdapter adpt4 = new SqlDataAdapter(comm4);
            DataTable dt4 = new DataTable();
            adpt4.Fill(dt4);
            GridView4.DataSource = dt4;
            GridView4.DataBind();
        }
    }
}