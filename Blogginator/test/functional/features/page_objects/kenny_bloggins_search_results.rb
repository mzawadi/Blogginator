require 'page-object'

class KennyBlogginsSearchResults
  include PageObject
  div(:response, :class => 'search-results')
end