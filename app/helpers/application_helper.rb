require 'redcarpet/render_strip'

module ApplicationHelper
  # markdown转text并截取开头字符
  def markdown_to_text(markdown)
    Redcarpet::Markdown.new(Redcarpet::Render::StripDown).render(markdown)[0...120]
  end
  def markdown_to_html(markdown)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {}).render(markdown)
  end
  def notice_message
    flash_messages = []

    close_html = %(<button name="button" type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span></button>)

    flash.each do |type, message|
      type = :success if type.to_sym == :notice
      type = :danger  if type.to_sym == :alert
      text = content_tag(:div, raw(close_html) + message, class: "alert alert-#{type}")
      flash_messages << text if message
    end

    flash_messages.join("\n").html_safe
  end
end
