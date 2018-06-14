Public Class search
    Inherits System.Web.UI.Page

    
    Protected Sub FindRecordButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles FindRecordButton.Click
        If DropDownList1.SelectedIndex = 0 Then
            Response.Redirect("\adminpanel\finddetails\newentry.aspx")
        ElseIf DropDownList1.SelectedIndex = 1 Then
            Response.Redirect("\adminpanel\finddetails\challan.aspx")
        ElseIf DropDownList1.SelectedIndex = 2 Then
            Response.Redirect("\adminpanel\finddetails\bilty.aspx")
        End If
    End Sub



    Protected Sub ForUpdateRecordButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ForUpdateRecordButton.Click
        If DropDownList2.SelectedIndex = 0 Then
            Response.Redirect("\adminpanel\update\newentryupdate.aspx")
        ElseIf DropDownList2.SelectedIndex = 1 Then
            Response.Redirect("\adminpanel\update\challanupdate.aspx")
        ElseIf DropDownList2.SelectedIndex = 2 Then
            Response.Redirect("\adminpanel\update\biltyupdate.aspx")
        End If
    End Sub

    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles DeleteButton.Click
        Dim state As Boolean = True

        Try
            DelEntry.Delete()
            state = False
        Catch ex As Exception
            state = True
        End Try

        If state = False Then
            MsgBox("Your Entry has been deleted successfully", MsgBoxStyle.Information)
            Response.Redirect(Request.RawUrl)
        Else
            MsgBox("Error", MsgBoxStyle.Critical)
        End If


    End Sub
End Class