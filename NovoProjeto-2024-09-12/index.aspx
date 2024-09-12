<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="NovoProjeto_2024_09_12.ryan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConexoesUsuarios %>" SelectCommand="SELECT * FROM [USUARIOS]"></asp:SqlDataSource>
            <asp:GridView ID="UsuariosGrid" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODIGOUSER" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CODIGOUSER" HeaderText="CODIGOUSER" InsertVisible="False" ReadOnly="True" SortExpression="CODIGOUSER" />
                    <asp:BoundField DataField="USUARIOS" HeaderText="USUARIOS" SortExpression="USUARIOS" />
                    <asp:BoundField DataField="NOMEUSUARIO" HeaderText="NOMEUSUARIO" SortExpression="NOMEUSUARIO" />
                    <asp:BoundField DataField="SENHA" HeaderText="SENHA" SortExpression="SENHA" />
                    <asp:BoundField DataField="ativo" HeaderText="ativo" SortExpression="ativo" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nome do usuário: "></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Usuário: "></asp:Label>
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <br />
             <asp:Label ID="Label3" runat="server" Text="Senha: "></asp:Label>
            <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" Text="Cadastrar" />
            <br />
            <asp:Label ID="lblAviso" runat="server"></asp:Label>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
