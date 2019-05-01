Imports System.Data

Partial Class OtherPets
    Inherits System.Web.UI.Page

    Protected Sub OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)
            Dim imageUrl As String = "data:image/jpg;base64," & Convert.ToBase64String(CType(dr("IMAGE"), Byte()))
            CType(e.Row.FindControl("Image1"), Image).ImageUrl = imageUrl
        End If
    End Sub

End Class