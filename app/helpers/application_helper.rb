module ApplicationHelper
    def icon_button(text, icon_class, options = {})
    content_tag(:button, class: "btn btn-light with-icon", type: "submit") do
      concat content_tag(:i, "", class: icon_class)
      concat " #{text}".html_safe
    end
  end
  def flash_class(key)
    case key.to_sym
    when :notice then "alert-success"
    when :alert, :error then "alert-danger"
    when :warning then "alert-warning"
    else "alert-info"
    end
  end
end
