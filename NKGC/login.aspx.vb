Public Class login
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If My.User.IsAuthenticated Then
            MsgBox("You are already Loggen in as " + User.Identity.Name)
            Response.Redirect("~")
        End If
    End Sub
End Class