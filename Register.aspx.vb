Imports System.Data.SqlClient
Imports System.Data

Partial Class Register
    Inherits System.Web.UI.Page
    Dim CN As SqlConnection
    Dim CMD As SqlCommand
    Dim DA As SqlDataAdapter
    Dim DT As DataTable

    Shared USER_ID As Integer

    Private Sub Connection()
        CN = New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        CN.Open()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Connection()
        DA = New SqlDataAdapter("SELECT USER_NAME FROM USERS WHERE USER_NAME = '" & TextBox1.Text & "'", CN)
        DT = New DataTable()
        DA.Fill(DT)
        If DT.Rows.Count > 0 Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Username is already taken.');window.location=window.location.href;", True)
        Else
            DA = New SqlDataAdapter("SELECT TOP 1 USER_ID FROM USERS ORDER BY USER_ID DESC", CN)
            DT = New DataTable()
            DA.Fill(DT)
            If DT.Rows.Count > 0 Then
                USER_ID = Val(DT.Rows(0)("USER_ID")) + 1
            Else
                USER_ID = 1
            End If

            CMD = New SqlCommand("INSERT INTO USERS (USER_NAME, PASSWORD, USER_ID) VALUES (@USER_NAME, @PASSWORD, @USER_ID)", CN)
            CMD.Parameters.AddWithValue("@USER_NAME", (TextBox1.Text))
            CMD.Parameters.AddWithValue("@PASSWORD", (TextBox2.Text))
            CMD.Parameters.AddWithValue("USER_ID", USER_ID)
            CMD.ExecuteNonQuery()
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Username created successfully.');window.location=window.location.href;", True)
        End If
        CN.Close()
    End Sub

End Class