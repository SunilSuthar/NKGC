Public Class bilty
    Inherits System.Web.UI.Page
    '' MY SUBs
    Public Sub printPage()
        Button1.Visible = False
        PandS.Visible = False
        goMainPage.Visible = False
        Response.Write("<script language=javascript>window.print()</script>")
    End Sub

    Public Sub refreshPage()
        'Response.Write("<meta http-equiv=REFRESH content=1;>")
        Response.Redirect(Request.RawUrl)
    End Sub
    '' End Of MY SUBs

    Public Sub calc()
        Try
            control14.Text = CInt(control12.Text) * CInt(control13.Text)
            control15.Text = CInt(control14.Text) * 5 / 100
            control16.Text = Convert.ToDouble(control14.Text) - Convert.ToDouble(control15.Text)
            control18.Text = Convert.ToDouble(control16.Text) - Convert.ToDouble(control17.Text)

        Catch ex As Exception

        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        control1.Text = Date.Today
    End Sub

    
   

    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton1.CheckedChanged
        If RadioButton1.Checked Then
            control20.Value = RadioButton1.Text
        ElseIf RadioButton2.Checked Then
            control20.Value = RadioButton2.Text
        Else
            control20.Value = RadioButton3.Text
        End If
    End Sub

    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton2.CheckedChanged
        If RadioButton1.Checked Then
            control20.Value = RadioButton1.Text
        ElseIf RadioButton2.Checked Then
            control20.Value = RadioButton2.Text
        Else
            control20.Value = RadioButton3.Text
        End If
    End Sub

    Protected Sub RadioButton3_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton3.CheckedChanged
        If RadioButton1.Checked Then
            control20.Value = RadioButton1.Text
        ElseIf RadioButton2.Checked Then
            control20.Value = RadioButton2.Text
        Else
            control20.Value = RadioButton3.Text
        End If
    End Sub

    Private Sub GridView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PreRender
        Try
            control4.Text = Me.GridView1.Rows(0).Cells(0).Text
            control5.Text = Me.GridView1.Rows(0).Cells(1).Text
            control12.Text = Me.GridView1.Rows(0).Cells(2).Text
            control13.Text = Me.GridView1.Rows(0).Cells(3).Text
            control17.Text = Me.GridView1.Rows(0).Cells(4).Text

            calc()


            GridView1.Visible = False
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles control3.SelectedIndexChanged
        GridView1.Visible = True
    End Sub

    Private Sub GridView2_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.PreRender
        control2.Text = GridView2.Rows(0).Cells(0).Text + 1
        GridView2.Visible = False
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        refreshPage()
    End Sub

    Protected Sub control12_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles control12.TextChanged
        calc()

    End Sub

    Protected Sub control13_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles control13.TextChanged
        calc()

    End Sub

    Protected Sub control14_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles control14.TextChanged
        calc()

    End Sub

    Protected Sub control15_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles control15.TextChanged
        calc()

    End Sub

    Protected Sub control16_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles control16.TextChanged
        calc()

    End Sub

    Protected Sub control17_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles control17.TextChanged
        calc()

    End Sub

    Protected Sub control18_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles control18.TextChanged
        calc()

    End Sub



    Protected Sub GridView3_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView3.SelectedIndexChanged

    End Sub

    Protected Sub PandS_Click(ByVal sender As Object, ByVal e As EventArgs) Handles PandS.Click

        Dim state As Boolean = False

        Try

            If GridView3.Rows(0).Cells(0).Text = control3.SelectedValue.ToString Then
                MsgBox("Bilty is already submitted")
            End If
        Catch ex As Exception
            state = True
            InsertBiltyData.Insert()
        End Try




        If state = True Then
            MsgBox("Your data has submited successfull", MsgBoxStyle.Information)
            printPage()
            refreshPage()
        Else
            MsgBox("Error", MsgBoxStyle.Critical)
        End If





    End Sub
End Class