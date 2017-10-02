# Original source: https://gist.github.com/joelverhagen/1805814

class YouTube < Liquid::Tag
  # Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/
  Syntax = /(?:(?:https?:\/\/)?(?:www.youtube.com\/(?:embed\/|watch\?v=)|youtu.be\/)?([^?& ]+)(?:\?rel=\d)?)(?:\s+(\d+)\s(\d+))?/i

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1

      if $2.nil? then
          @width = 480
          @height = 360
      else
          @width = $2.to_i
          @height = $3.to_i
      end
    else
      raise "No YouTube ID provided in the \"youtube\" tag"
    end
  end

  def render(context)
    # "<iframe width=\"#{@width}\" height=\"#{@height}\" src=\"http://www.youtube.com/embed/#{@id}\" frameborder=\"0\"allowfullscreen></iframe>"
    "<iframe width=\"#{@width}\" height=\"#{@height}\" frameborder=\"0\" src=\"http://www.youtube.com/embed/#{@id}?ecver=2\"></iframe>"
  end

  Liquid::Template.register_tag "youtube", self
end