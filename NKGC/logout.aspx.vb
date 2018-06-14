Public Class logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If My.User.IsAuthenticated Then
          
            FormsAuthentication.SignOut()

            MsgBox("You logged out as " + My.User.Name.ToUpper)

        Else
            MsgBox("You are not logged in to logout")

        End If

        Response.Redirect("~")

    End Sub

End Class