module Jekyll
  class EmptyCitationTag < Liquid::Tag
    def render(_context)
      ""
    end
  end
end

Liquid::Template.register_tag("google_scholar_citations", Jekyll::EmptyCitationTag)
Liquid::Template.register_tag("inspirehep_citations", Jekyll::EmptyCitationTag)
