class Admin::SearchComponent < ApplicationComponent; end

require_dependency Rails.root.join("app", "components", "admin", "search_component").to_s

class Admin::SearchComponent
  # Your custom logic here
  attr_reader :label, :form_options

  def initialize(label:, url: nil, **form_options)
    @label = label
    @url = url
    @form_options = form_options
  end

  def url
    @url || request.path
  end

  private

    def search_terms
      params[:search]
    end

    def options
      { method: :get, role: "search", class:"ds_site-search__form" }.merge(form_options)
    end

    def hidden_current_filter_tag
      hidden_field_tag(:filter, current_filter) if current_filter
    end

    def current_filter
      if helpers.respond_to?(:current_filter)
        helpers.current_filter
      end
    end
end