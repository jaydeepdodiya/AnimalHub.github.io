Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("USER_ID") IsNot Nothing Then
            'Stay Logged In
        Else
            Response.Redirect("~/Login.aspx")
        End If

    End Sub

End Class