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


End Class
