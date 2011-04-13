

module MenuHelper
  
  def menu_item(page, title, html_class=nil)
    page_name = "#{page}.html"
    if "/#{page_name}" == current_page 
      return "<span class='active #{html_class}'>#{title}</span>"
    else
      html_class = (html_class.nil?) ? "" : "class='#{html_class}'" 
      return "<a href='/#{page_name}' #{html_class}>#{title}</a>"
    end
  end
  
end