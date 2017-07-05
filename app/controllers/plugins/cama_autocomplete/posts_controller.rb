class Plugins::CamaAutocomplete::PostsController < Plugins::CamaAutocomplete::FrontController
  def search
    respond_to do |format|
      format.json do
        items = current_site.the_posts(params[:type])
        @posts = items.where("LOWER(title) LIKE ? OR LOWER(content_filtered) LIKE ?", "%#{params[:term]}%", "%#{params[:term]}%").limit(current_site.front_per_page).order("created_at DESC")
      end
    end
  end
end
