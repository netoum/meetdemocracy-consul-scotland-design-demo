module LayoutsHelper
  def layout_menu_link_to(text, path, is_active, options)
    title = t("shared.go_to_page") + text

    if is_active
      tag.li(class: "ds_site-navigation__item") do
        tag.span(text,class: "ds_site-navigation__link  ds_current")
      end
    else
      tag.li(class: "ds_site-navigation__item") do
      link_to(text, path, options.merge(class: "ds_site-navigation__link",title: title))
      end
    end
  end

  def common_html_attributes
    render Layout::CommonHTMLAttributesComponent.new
  end
end
