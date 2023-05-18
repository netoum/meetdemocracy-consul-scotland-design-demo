def generate_content(page)
  page.title = I18n.t("welcome.welcome.title")

  page.content = "<div class='ds_notification-panel ds_notification-panel--success'>
                  <div class='ds_notification-panel__content'>
                  <strong>#{I18n.t("welcome.welcome.user_permission_info")}</strong>
                  <ul class='no-bullet'>
                  <li>#{I18n.t("verification.user_permission_debates")}</li>
                    <li>#{I18n.t("verification.user_permission_proposal")}</li>
                    <li>#{I18n.t("verification.user_permission_support_proposal")}</li>
                  </ul>
                  <strong>#{I18n.t("welcome.welcome.user_permission_verify")}</strong>
                  <ul class='no-bullet'>
                    <li>#{I18n.t("verification.user_permission_votes")}</li>
                  </ul>
                  <a href='/verification' class='ds_button success radius expand'>
                    #{I18n.t("welcome.welcome.user_permission_verify_my_account")}
                  </a>
                  <a href='/' class='ds_button ds_button--cancel'>#{I18n.t("welcome.welcome.go_to_index")}</a>
                  </div>
                  </div>"

  page.save!
end
if SiteCustomization::Page.find_by(slug: "welcome_level_two_verified").nil?
  page = SiteCustomization::Page.new(slug: "welcome_level_two_verified", status: "published")
  I18n.available_locales.each do |locale|
    I18n.with_locale(locale) { generate_content(page) }
  end
end
