package blogginator

class CommentController {

	def scaffold = true
    def index() { }
	
	def edit2 = {
		render(view:'edit2',
				model:[
						comment:new Comment(),
						postId:params.postId])
	}

	def save = {
		def comment = new Comment(params)
		comment.dateCreated = new Date();
		comment.post = Post.get(params.postId)
		if(comment.save()) {
			redirect(
					controller:'post',
					action:'view',
					id:params.postId)
		} else {
			render(view:'edit2',
					model:[comment:comment,
							postId:params.postId])
		}
	}
}

