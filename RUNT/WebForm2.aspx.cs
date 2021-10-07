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
        
        // Metodo para llenar todos nuestros gridviews
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

        // Metodo para traer los datos generales
        protected void ObtenerInfGrl(object sender, EventArgs e) {
            conn.Open();
            if (TextBox1.Text != null)
            {
                SqlCommand comm = new SqlCommand("select * from InformacionGeneral where ID= '" + int.Parse(TextBox1.Text) + "'", conn);
                SqlDataReader rd = comm.ExecuteReader();
                while (rd.Read())
                {
                    fecha.Text = rd.GetValue(1).ToString();
                    DropDownList1.SelectedValue = rd.GetValue(2).ToString();
                    idVehiculo.Text = rd.GetValue(3).ToString();
                    idPropietario.Text = rd.GetValue(4).ToString();
                    idComprador.Text = rd.GetValue(5).ToString();
                    DropDownList7.SelectedValue = rd.GetValue(6).ToString();
                    comentarios.Text = rd.GetValue(7).ToString();
                }
            }
            conn.Close();
        }

        // Metodo para traer los datos generales del vehiculo
        protected void ObtenerInfGrlVeh(object sender, EventArgs e)
        {
            conn.Open();
            if (TextBox2.Text != null)
            {
                SqlCommand comm = new SqlCommand("select * from InformacionGeneralVehiculo where NoIdentificacion= '" + int.Parse(TextBox2.Text) + "'", conn);
                SqlDataReader rd = comm.ExecuteReader();
                while (rd.Read())
                {
                    placa.Text = rd.GetValue(0).ToString();
                    DropDownList2.SelectedValue = rd.GetValue(1).ToString();
                    DropDownList6.SelectedValue = rd.GetValue(2).ToString();
                    noMotor.Text = rd.GetValue(3).ToString();
                    noEjes.Text = rd.GetValue(5).ToString();
                    DropDownList3.SelectedValue = rd.GetValue(6).ToString();
                }
            }
            conn.Close();
        }

        // Metodo para traer los datos especificos del vehiculo
        protected void ObtenerInfEspVeh(object sender, EventArgs e)
        {
            conn.Open();
            if (TextBox3.Text != null)
            {
                SqlCommand comm = new SqlCommand("select * from InformacionEspecificaVehiculo where IDDetalle= '" + int.Parse(TextBox3.Text) + "'", conn);
                SqlDataReader rd = comm.ExecuteReader();
                while (rd.Read())
                {
                    marca.Text = rd.GetValue(1).ToString();
                    linea.Text = rd.GetValue(2).ToString();
                    tipo.Text = rd.GetValue(3).ToString();
                    DropDownList5.SelectedValue = rd.GetValue(4).ToString();
                    colores.Text = rd.GetValue(5).ToString();
                    modelo.Text = rd.GetValue(6).ToString();
                    peso.Text = rd.GetValue(7).ToString();
                    largo.Text = rd.GetValue(8).ToString();
                    ancho.Text = rd.GetValue(9).ToString();
                    alto.Text = rd.GetValue(10).ToString();
                    capCarga.Text = rd.GetValue(11).ToString();
                }
            }
            conn.Close();
        }

        // Metodo para traer los datos de las personas involucradas
        protected void ObtenerInfPersona(object sender, EventArgs e)
        {
            conn.Open();
            if (TextBox4.Text != null)
            {
                SqlCommand comm = new SqlCommand("select * from InformacionPersona where NoDocumento= '" + TextBox4.Text + "'", conn);
                SqlDataReader rd = comm.ExecuteReader();
                while (rd.Read())
                {
                    apellido.Text = rd.GetValue(0).ToString();
                    apellido2.Text = rd.GetValue(1).ToString();
                    nombres.Text = rd.GetValue(2).ToString();
                    direccion.Text = rd.GetValue(5).ToString();
                    ciudad.Text = rd.GetValue(6).ToString();
                    tel.Text = rd.GetValue(7).ToString();
                    firma.Text = rd.GetValue(8).ToString();
                    tipoUsuario.Text = rd.GetValue(9).ToString();
                }
            }
            conn.Close();
        }

        protected void ActualizarInfGrl(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("update InformacionGeneral set FechaTramite = '" + fecha.Text + "', TramiteSolicitado = '" + DropDownList1.SelectedValue + "', IDVehiculo = '" + int.Parse(idVehiculo.Text) + "', IDPropietario = '" + int.Parse(idPropietario.Text) + "', IDComprador = '" + int.Parse(idComprador.Text) + "', DatosAlerta = '" + DropDownList7.SelectedValue + "', Observaciones = '" + comentarios.Text + "' where ID= '" + int.Parse(TextBox1.Text) + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registro actualizado exitosamente');", true);
            ObtenerRegistros();
        }

        protected void ActualizarInfGrlVehiculo(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("update InformacionGeneralVehiculo set Placa = '" + placa.Text + "', ClaseMaquinaria = '" + DropDownList2.SelectedValue + "', Cabina = '" + DropDownList6.SelectedValue + "', NoMotor = '" + int.Parse(noMotor.Text) + "', NoEjes = '" + int.Parse(noEjes.Text) + "', TipoCombustible = '" + DropDownList3.SelectedValue + "' where NoIdentificacion= '" + int.Parse(TextBox2.Text) + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registro actualizado exitosamente');", true);
            ObtenerRegistros();
        }

        protected void ActualizarInfEspVehiculo(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("update InformacionEspecificaVehiculo set Marca = '" + marca.Text + "', Linea = '" + linea.Text + "', Tipo = '" + tipo.Text + "', TipoTraccion = '" + DropDownList5.SelectedValue + "', Colores = '" + colores.Text + "', Modelo = '" + modelo.Text + "', PesoBruto = '" + int.Parse(peso.Text) + "', Largo = '" + int.Parse(largo.Text) + "', Ancho = '" + int.Parse(ancho.Text) + "', Alto = '" + int.Parse(alto.Text) + "', CapacidadCarga = '" + capCarga.Text + "' where IDDetalle= '" + int.Parse(TextBox3.Text) + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registro actualizado exitosamente');", true);
            ObtenerRegistros();
        }

        protected void ActualizarInfPersona(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("update InformacionPersona set primerApellido = '" + apellido.Text + "', segundoApellido = '" + apellido2.Text + "', Nombres = '" + nombres.Text + "', Direccion = '" + direccion.Text + "', Ciudad = '" + ciudad.Text + "', Telefono = '" + tel.Text + "', Firma = '" + firma.Text + "', TipoUsuario = '" + DropDownList4.SelectedValue + "' where NoDocumento= '" + TextBox4.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registro actualizado exitosamente');", true);
            ObtenerRegistros();
        }
    }
}