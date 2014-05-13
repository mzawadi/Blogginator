package blogginator

class PostController {


	def scaffold = true 
	//def index = 'list'

	def edit = {
		def post = Post.get(params.id)
		if(!post) {
			post = new Post()
		}
		render(view:'edit', model:[post:post])
	}

	def list = {
		render(
				view:'list',
				model:[posts:Post.list(
					sort:'lastUpdated',
					order:'desc')])
	}
	
	def view = {
		render(view:'view', model:[post:Post.get(params.id)])
	}
	
	def save = {
		def post = loadPost(params.id)
		post.properties = params
		if(post.save()) {
			redirect(action:'list')
		} else {
			render(view:'edit', model:[post:post])
		}
	}
	
	def signIn = {
		Login login = new Login()
		login.userName = params.userName
		login.passWord = params.passWord
		
		userNameFromForm = login.userName
		passWordFromForm = login.passWord
		
		if() {
			redirect(view:'index')
		} else {
			redirect(view:'error')
		}
		render(login.passWord)
	}
	
	def signOut = {
		render(
				view:'list',
				model:[posts:Post.list(
					sort:'lastUpdated',
					order:'desc')])
	}
	
	private loadPost(id) {
		def post = new Post();
		if(id) {
			post = Post.get(id)
		}
		return post
	}

}