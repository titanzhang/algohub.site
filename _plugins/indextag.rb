module Jekyll

  # The list of pages and posts for each tag
  class TagsGenerator < Generator

    def generate(site)
      tags_html_page = site.pages.detect { |page| page.name == 'tags.html' }
      tags_html_page.data['index_tags'] = get_index_tags(site)
    end

    # Returns a hash of pages and posts indexed by tags.
    #
    # Example:
    #   {
    #     'tech' => [<Page A>, <Page B>, <Post A>, <Post B>],
    #     'ruby' => [<Post B>]
    #   }
    #
    # By default Jekyll does not return the list of pages for each tag, only the posts
    def get_index_tags(site)
      index_tags = {}

      site.pages.each do |page|
        # if page.data['index']?
          page_tags = page.data['tags']
          unless page_tags.nil?
            page_tags.each do |tag|
              if index_tags[tag].nil?
                index_tags[tag] = []
              end
              index_tags[tag].push(page)
            end
          end
        # end
      end

      return index_tags
    end
  end
end