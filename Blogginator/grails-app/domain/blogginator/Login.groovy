package blogginator

class Login {
	Long Id
	
	String userName
	String passWord
	
//	def constraints =
//	{
//	 userName(blank:false)
//	 passWord(blank:false, password:true)
//	}
	
	static mapping =  {
		version false
	}
}
