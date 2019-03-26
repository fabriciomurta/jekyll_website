module Jekyll
 module IsMD
  def is_md(name)
   name.match(/\.md$/)
  end
 end
end

Liquid::Template.register_filter(Jekyll::IsMD)
