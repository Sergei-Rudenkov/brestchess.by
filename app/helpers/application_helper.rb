module ApplicationHelper
def markdown(text)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
        autolink: true,
        no_intra_emphasis: true,
        fenced_code_blocks: true,
        lax_html_blocks: true,
        strikethrough: true,
        superscript: true,
        space_after_headers: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

  def favicon_link_tag(source='favicon.ico', options={})
  tag('link', {
    :rel  => 'shortcut icon',
    :type => 'image/vnd.microsoft.icon',
    :href => path_to_image(source)
  }.merge!(options.symbolize_keys))
end
def safe_textilize( s )
  if s && s.respond_to?(:to_s)
    doc = RedCloth.new( s.to_s )
    doc.filter_html = true
    doc.to_html
  end
end
end
