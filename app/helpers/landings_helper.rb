module LandingsHelper
  def get_proper_format_for_sidescroll_item(model, type)
    if type === "consultants"
      model = model.profile
      # model.picture = model.profile_picture
    elsif type == "learning_pieces"
      model = model
    end
    model
  end
end
