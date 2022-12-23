module WorkshopHelper
  def workshop_link(workshop)
    if params[:controller] == "workshops" && params[:action] == "index"
      render "workshops/index_workshop", workshop: workshop
    elsif params[:controller] == "workshops" && params[:action] == "show"
      render "workshops/show_workshop", workshop: workshop
    end
  end
end
