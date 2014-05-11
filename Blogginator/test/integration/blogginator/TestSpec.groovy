package blogginator



import spock.lang.*

/**
 *
 */
class TestSpec extends Specification {

	def setup() {
	}

	def cleanup() {
	}

	void "test something"() {
		
		given:
		Post post = new Post(title:"First Grails Project",
		teaser:"Clearing out the clutter",
		content:"The full content of the article",
		published:false)

		when:
		post.save()
		def id = post.id
		Post retrievedPost = Post.get(id)

		then:
		assert "First Grails Project" == retrievedPost.title
		assert Post.get(10) == null;
		
		when:
		post.published = true
		post.save()
		retrievedPost = Post.get(id)
		
		then:
		assert retrievedPost.published
		
		when:
		post.delete()
		
		then:
		assert Post.get(id) == null
		
	}
}
