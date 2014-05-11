require 'page-object'

class KennyBloggins
  include PageObject
  page_url "http://localhost:8080/Blogginator/"

  text_field(:search, :name => 'blogSearch')

end