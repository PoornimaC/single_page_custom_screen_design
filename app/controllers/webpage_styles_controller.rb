class WebpageStylesController < ApplicationController
  before_action :get_web_page_styles, only: [:index, :create]

  def index
  end

  def new
    @webpage_style = WebpageStyle.new
  end

  def create
    @webpage_style = WebpageStyle.create(webpage_style_params)
  end

  private

  def webpage_style_params
    params.require(:webpage_style).permit(:title, :bg_color, :font_style)
  end

  def get_web_page_styles
    @webpage_styles = WebpageStyle.all.limit(20).order("created_at DESC")
  end

end
