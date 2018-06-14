Imports System.Data.OleDb
Public Class challan
    Inherits System.Web.UI.Page
    Dim total As Integer = 0

    '' MY SUBs
    Public Sub printPage()
        Response.Write("<script language=javascript>window.print()</script>")
    End Sub

    Public Sub refreshPage()
        Response.Redirect(Request.RawUrl)
    End Sub

    '' End Of MY SUBs


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Date.Today
    End Sub



    Protected Sub ClearButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ClearButton.Click
        refreshPage()
    End Sub
    
    Private Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender

        TextBox3.Text = Me.GridView1.Rows(0).Cells(0).Text
        TextBox4.Text = Me.GridView1.Rows(0).Cells(1).Text
        TextBox5.Text = Me.GridView1.Rows(0).Cells(2).Text
        TextBox8.Text = Me.GridView1.Rows(0).Cells(3).Text
        label1.Text = Me.GridView2.Rows(0).Cells(0).Text + 1

        GridView2.Visible = False
        GridView1.Visible = False
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        GridView1.Visible = True
        GridView3.Visible = True
    End Sub

    Protected Sub SubmitandPrintButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SubmitandPrintButton.Click
        Dim stat As Boolean = False


        Try

            If GridView3.Rows(0).Cells(0).Text = DropDownList1.SelectedValue.ToString Then
                MsgBox("challan is already submitted")
            End If
        Catch ex As Exception
            stat = True
            ChallanDataInsert.Insert()
        End Try


        If stat = True Then

            ClearButton.Visible = False
            SubmitandPrintButton.Visible = False
            goMainPage.Visible = False
            MsgBox("Data Submitted Successfully", MsgBoxStyle.Information)
            printPage()
            refreshPage()

        End If

    End Sub

   

    Private Sub TextBox18_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox18.PreRender
        TextBox18.Text = CInt(TextBox15.Text) + CInt(TextBox16.Text) + CInt(TextBox17.Text)
    End Sub

   
    Protected Sub GridView2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView2.SelectedIndexChanged

    End Sub

    Private Sub GridView3_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView3.PreRender
        GridView3.Visible = False
    End Sub

   
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class