module ApplicationHelper
    def icon_button(text, icon_class, options = {})
    content_tag(:button, class: "btn btn-light with-icon", type: "submit") do
      concat content_tag(:i, "", class: icon_class)
      concat " #{text}".html_safe
    end
  end
end
