Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class SellAnimal
    Inherits System.Web.UI.Page
    Dim CN As SqlConnection
    Dim CMD As SqlCommand
    Dim DA As SqlDataAdapter
    Dim DT As DataTable

    Private Sub Connection()
        CN = New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        CN.Open()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        DropDownList3_SelectedIndexChanged(sender, e)
    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList3.SelectedIndexChanged
        If DropDownList3.SelectedValue = 1 Then
            TextBox1.Enabled = True
            TextBox2.Enabled = False
            TextBox3.Enabled = False
        ElseIf DropDownList3.SelectedValue = 2 Then
            TextBox1.Enabled = False
            TextBox2.Enabled = True
            TextBox3.Enabled = True
        ElseIf DropDownList3.SelectedValue = 3 Then
            TextBox1.Enabled = False
            TextBox2.Enabled = False
            TextBox3.Enabled = False
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Connection()
        CMD = New SqlCommand("INSERT INTO SELL_DATA (USER_ID, ANIMAL_TYPE, TITLE, PRICE_TYPE, FIXED_PRICE, PRICE_FROM, PRICE_TO, DISCRIPTION, ADDRESS, MOBILE) VALUES (@USER_ID, @ANIMAL_TYPE, @TITLE, @PRICE_TYPE, @FIXED_PRICE, @PRICE_FROM, @PRICE_TO, @DISCRIPTION, @ADDRESS, @MOBILE)", CN)
        CMD.Parameters.AddWithValue("USER_ID", Session("USER_ID"))
        CMD.Parameters.AddWithValue("ANIMAL_TYPE", DropDownList1.SelectedValue)
        CMD.Parameters.AddWithValue("TITLE", TextBox4.Text)
        CMD.Parameters.AddWithValue("PRICE_TYPE", DropDownList3.SelectedValue)
        CMD.Parameters.AddWithValue("FIXED_PRICE", Val(TextBox1.Text))
        CMD.Parameters.AddWithValue("PRICE_FROM", Val(TextBox2.Text))
        CMD.Parameters.AddWithValue("PRICE_TO", Val(TextBox3.Text))
        CMD.Parameters.AddWithValue("DISCRIPTION", TextBox5.Text)
        CMD.Parameters.AddWithValue("ADDRESS", TextBox6.Text)
        CMD.Parameters.AddWithValue("MOBILE", TextBox7.Text)
        CMD.ExecuteNonQuery()

        Using FS As Stream = FileUpload1.PostedFile.InputStream
            Using BR As New BinaryReader(FS)
                Dim BYTES As Byte() = BR.ReadBytes(FS.Length)
                Dim ConStr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
                Using cn_upload As New SqlConnection(ConStr)
                    Dim Insert_Document As String = "UPDATE SELL_DATA SET IMAGE = @PHOTO WHERE USER_ID = " & Session("USER_ID") & " AND ANIMAL_TYPE = " & DropDownList1.SelectedValue & " AND TITLE = '" & TextBox4.Text & "' AND PRICE_TYPE = " & DropDownList3.SelectedValue & " AND DISCRIPTION = '" & TextBox5.Text & "' AND ADDRESS = '" & TextBox6.Text & "' AND MOBILE = '" & TextBox7.Text & "'"
                    Using cmd_upload As New SqlCommand(Insert_Document)
                        cmd_upload.Connection = cn_upload
                        cmd_upload.Parameters.Add("@PHOTO", SqlDbType.Binary).Value = BYTES
                        cn_upload.Open()
                        cmd_upload.ExecuteNonQuery()
                        cn_upload.Close()
                    End Using
                End Using
            End Using
        End Using

        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Submitted.');window.location=window.location.href;", True)
        CN.Close()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("~/SellAnimal.aspx")
    End Sub

End Class