package blogginator

class LoginController {
	def scaffold = true
    def index() { }
	
	def redirect = {
		render(view:'login')
	}
}
