abstract class BasePage
  include LuckyWeb::Page

  macro inherited
    # You can put things here that all pages need
    #
    # Example:
    #   needs current_user : User

    layout MainLayout
  end

  def page_title
    "Lucky - change at src/pages/base_page.cr"
  end

  def errors_for(field : LuckyRecord::AllowedField)
    # Customize the markup and styles to match your application
    unless field.valid?
      div class: "error" do
        text "#{field.name.to_s.capitalize} #{field.errors.join(", ")}"
      end
    end
  end
end
