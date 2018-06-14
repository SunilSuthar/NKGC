Public Class bilty1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Button2.Visible = False
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Panel1.Visible = False
        GridView1.Visible = True
        Button2.Visible = True
    End Sub

    Protected Sub refButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles refButton.Click
        Response.Redirect(Request.RawUrl)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Panel2.Visible = False
        GridView1.Visible = True
        Response.Write("<script language=javascript>window.print()</script>")
        Panel2.Visible = True
    End Sub
End Class