class WebpageStylesController < ApplicationController

  def index
    get_web_page_styles
  end

  def show
    @webpage_style = WebpageStyle.find(params[:id])
  end

  def new
    @webpage_style = WebpageStyle.new
  end

  def create
    get_web_page_styles
    @webpage_style = WebpageStyle.create(webpage_style_params)
    @current_screen_style =  @webpage_style
  end

  private

  def webpage_style_params
    params.require(:webpage_style).permit(:title, :bg_color, :font_style)
  end

  def get_web_page_styles
    @webpage_styles = WebpageStyle.all.limit(20).order("created_at DESC")
  end

end
