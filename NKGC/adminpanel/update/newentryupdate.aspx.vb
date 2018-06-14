Public Class newentryupdate
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        FormView1.Visible = False
    End Sub
   

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Panel1.Visible = False
        FormView1.Visible = True
    End Sub

    Private Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        MsgBox("Data has been updated successfully", MsgBoxStyle.Information)
        Response.Redirect(Request.RawUrl)

    End Sub

  
    Protected Sub UpdateCancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect(Request.RawUrl)
    End Sub

 
    Protected Sub refButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles refButton.Click
        Response.Redirect(Request.RawUrl)
    End Sub
End Class