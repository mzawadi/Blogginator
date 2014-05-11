package blogginator

class Commentator {
	
	static belongsTo = Comment
	
	String name
	String email
	Comment comment
	
    static constraints = {
		
		name (nullable:false, blank:false)
		email(nullable:true, blank:true, email:true)
    }
}
