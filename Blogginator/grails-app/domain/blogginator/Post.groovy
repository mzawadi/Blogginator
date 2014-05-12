package blogginator

class Post {
	
	static hasMany = [comments:Comment]
	
	String title
	String teaser
	
	String content
	Date lastUpdated
	Boolean published = false
	SortedSet comments

    static constraints = {
		
		title(nullable:false, blank:false, length:1..50)
		teaser(length:1..100)
		content(nullable:false, blank:false, maxSize:10000)
		lastUpdated(nullable:true)
		published(nullible:false)		
	}
	
	static mapping = {
		sort lastUpdated: "desc"
	}
}
