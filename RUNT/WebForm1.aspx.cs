using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RUNT
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        int counter = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void LimpiarCampos()
        {
            // Set values to ""
        }

        protected void Enviar(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Creamos la instancia para la conexión SQL
                SqlConnection conn = new SqlConnection("Data Source=LAPTOP-AMUMB5AS;Initial Catalog=RuntBD;Integrated Security=True");
                // Abrimos watcher de ejecucion de comandos SQL
                conn.Open();
                // Creamos nuestros comandos/query que queremos ejecutar
                SqlCommand comm = new SqlCommand("Insert into InformacionGeneral values('" + (counter++) + "','" + fecha.Text + "','" + DropDownList1.SelectedValue + "','" + int.Parse(idVehiculo.Text) + "','" + int.Parse(idPropietario.Text) + "','" + int.Parse(idComprador.Text) + "','" + DropDownList7.SelectedValue + "','" + comentarios.Text + "')", conn);
                SqlCommand comm2 = new SqlCommand("Insert into InformacionGeneralVehiculo values('" + (placaLetras.Text+placaNumeros.Text) + "','" + DropDownList2.SelectedValue + "','" + DropDownList6.SelectedValue + "','" + int.Parse(noMotor.Text) + "','" + int.Parse(idVehiculo.Text) + "','" + int.Parse(noEjes.Text) + "','" + "Gasolina" + "')", conn);
                SqlCommand comm3 = new SqlCommand("Insert into InformacionEspecificaVehiculo values('"+ int.Parse(idVehiculo.Text) + "','" + marca.Text + "','" + linea.Text + "','" + tipo.Text + "','" + DropDownList5.SelectedValue + "','" + colores.Text + "','" + modelo.Text + "','" + int.Parse(peso.Text) + "','" + int.Parse(largo.Text) + "','" + int.Parse(ancho.Text) + "','" + int.Parse(alto.Text) + "','" + capCarga.Text + "')", conn);
                SqlCommand comm4 = new SqlCommand("Insert into InformacionPersona values('"+ apellidoPropietario.Text + "','" + apellido2Propietario.Text + "','" + nombresPropietario.Text + "','" + DropDownList3.SelectedValue + "','" + idPropietario.Text + "','" + direccionPropietario.Text + "','" + ciudadPropietario.Text + "','" + telPropietario.Text + "','" + firmaPropietario.Text + "','" + "Propietario" + "')", conn);
                SqlCommand comm5 = new SqlCommand("Insert into InformacionPersona values('" + apellidoComprador.Text + "','" + apellido2Comprador.Text + "','" + nombresComprador.Text + "','" + DropDownList4.SelectedValue + "','" + idComprador.Text + "','" + direccionComprador.Text + "','" + ciudadComprador.Text + "','" + telComprador.Text + "','" + firmaComprador.Text + "','" + "Comprador" + "')", conn);
                // Ejecutamos nuestros comandos
                comm.ExecuteNonQuery();
                comm2.ExecuteNonQuery();
                comm3.ExecuteNonQuery();
                comm4.ExecuteNonQuery();
                comm5.ExecuteNonQuery();
                // Cerramos el watcher
                conn.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registro agregado exitosamente');", true);
                LimpiarCampos();
                Response.Redirect("WebForm2.aspx");
            }
        }
    }
}