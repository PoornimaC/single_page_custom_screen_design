class WebpageStyle < ActiveRecord::Base
  validates :title, presence:true
  validates :bg_color, presence:true
  validates_format_of :bg_color, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i, unless: "bg_color.blank?"
  validates :font_style, presence:true

  FONT_STYLE = %w(normal italic oblique initial inherit)

  validates_inclusion_of :font_style, :in => WebpageStyle::FONT_STYLE

end
