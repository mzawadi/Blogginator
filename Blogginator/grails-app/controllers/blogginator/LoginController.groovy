package blogginator

class LoginController {
	def scaffold = true
    def index() { }
	
	def sendToLogIn = {
		render(view:'login')
	}
}
