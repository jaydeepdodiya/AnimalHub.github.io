Imports System.Data.SqlClient
Imports System.Data

Partial Class Login
    Inherits System.Web.UI.Page
    Dim CN As SqlConnection
    Dim DA As SqlDataAdapter
    Dim DT As DataTable

    Private Sub Connection()
        CN = New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        CN.Open()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Connection()
        DA = New SqlDataAdapter("SELECT * FROM USERS WHERE USER_NAME = '" & TextBox1.Text & "' AND PASSWORD = '" & TextBox2.Text & "'", CN)
        DT = New DataTable
        DA.Fill(DT)
        If DT.Rows.Count > 0 Then
            Session("USER_ID") = DT.Rows(0)("USER_ID")
            Response.Redirect("~/Dashboard.aspx")
        Else
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Wrong username/password.');window.location=window.location.href;", True)
        End If
        CN.Close()
    End Sub

End Class