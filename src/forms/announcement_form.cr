class AnnouncementForm < Announcement::BaseForm
  allow title

  def call
    validate_length title, min: 10
  end

  private def validate_length(field, min)
    if (field.value || "").size < min
      field.add_error "is too short"
    end
  end
end
