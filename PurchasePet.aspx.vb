
Partial Class PurchasePet
    Inherits System.Web.UI.Page

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("~/Cat.aspx")
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("~/Dog.aspx")
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("~/OtherPets.aspx")
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("~/Accessories.aspx")
    End Sub
End Class
