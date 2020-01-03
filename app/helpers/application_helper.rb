require 'redcarpet/render_strip'

module ApplicationHelper
  # markdown转text并截取开头字符
  def markdown_to_text(markdown)
    Redcarpet::Markdown.new(Redcarpet::Render::StripDown).render(markdown)[0...120]
  end
end
