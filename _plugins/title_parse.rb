module Jekyll
 module TitleParse
  def parse_title(name)
   name.gsub(/\.md$/, '')
    .gsub(/_([a-z])/) { |m| " " + m[1].upcase }
    .gsub(/_/, ' ')
    .gsub(/^([a-z])/) { |m| m.upcase }
  end
 end
end

Liquid::Template.register_filter(Jekyll::TitleParse)
