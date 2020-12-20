#from https://stackoverflow.com/questions/26073090/how-to-retrieve-the-current-post-index-number-in-jekyll
module Jekyll
  class PostIndex < Generator
      safe true
      priority :low
      def generate(site)
          site.posts.each_with_index do |item, index|
              item.data['index'] = index
          end
      end
  end
end