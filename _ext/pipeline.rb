require 'bootstrap-sass'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new('/blog')
  extension Awestruct::Extensions::Indexifier.new
  helper Awestruct::Extensions::GoogleAnalytics
  extension Awestruct::Extensions::Paginator.new(:posts, '/index', :per_page => 2)
  # Indexifier *must* come before Atomizer
  extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'
end
