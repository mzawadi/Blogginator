import blogginator.Login
import blogginator.Post

class BootStrap {

    def init = {servletContext ->
		new Login(userName:"kenny",passWord:"loggins").save()
}
    def destroy = {
    }
}
