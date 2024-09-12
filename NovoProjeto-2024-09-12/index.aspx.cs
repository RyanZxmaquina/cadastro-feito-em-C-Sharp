using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NovoProjeto_2024_09_12
{
    public partial class ryan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            string usuario_nome_completo = txtNome.Text;
            string usuario_do_sistema = txtUsuario.Text;
            string senha = txtSenha.Text;
            string ativo = "1"; // supondo que 1 = ativo e 0 = inativo;

            string conexao = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConexoesUsuarios"].ConnectionString;
            string SQL = "INSERT INTO USUARIOS (USUARIOS, NOMEUSUARIO, SENHA, ativo) values ('" + usuario_do_sistema + "','" + usuario_nome_completo + "','" + senha + "','"+ ativo +"')";

            SqlDataReader dr = null;
            SqlConnection conn = null;

            try
            {
                conn = new SqlConnection(conexao);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand(SQL, conn);
                dr = cmd.ExecuteReader();

                if (dr.RecordsAffected > 0)
                {
                    lblAviso.Text = "Usuário incluído com sucesso !";
                    UsuariosGrid.DataBind();
                }
                else
                {
                    lblAviso.Text = "Nenhum usuário foi incluído. Por favor tente novamente !";
                }

            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
    }
}