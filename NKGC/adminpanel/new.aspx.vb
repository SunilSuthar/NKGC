Public Class _new
    Inherits System.Web.UI.Page

    Public Sub reset()
        Response.Redirect(Request.RawUrl)
    End Sub


    Protected Sub SubmitButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SubmitButton.Click


        Dim state As Boolean = False

        Try
            If TextBox1.Text = GridView1.Rows(0).Cells(0).Text Then

                If MsgBox("Entry already exists Do you want to update then click OK", MsgBoxStyle.OkCancel) = MsgBoxResult.Ok Then
                    Response.Redirect("\adminpanel\update\newentryupdate.aspx")
                Else
                    Response.Redirect(Request.RawUrl)
                End If

            End If

        Catch ex As Exception
            state = True
        End Try

        If state = True Then
            NewEntry.Insert()
            MsgBox("Entry has been successfully submitted", MsgBoxStyle.Information)
            reset()
        End If


    End Sub

    Protected Sub ClearButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ClearButton.Click
        reset()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Label1.Text = Date.Today

    End Sub

End Class