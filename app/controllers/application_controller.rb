class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def index
    HEADING <= "Winda Tang's Kingdom"
    SUB_HEADING <= "WindaTang's Individual Website, design and developer by Winda"
    # if @description.nil?
    #   @description = "First WebSite";
    # end
    # if @keywords.nil?
    #   @description = "First WebSite";
    # end
    # render  'hello'
  end
  # def self_meta_tag (description = "The first Ruby Website")
  #   puts [
  #       tag('meta', :charset => 'utf-8'),
  #       tag('meta', :name => 'X-UA-Compatible', :content =>"IE=edge,chrome=1"),
  #       tag('meta', :name => 'description', :content => description),
  #       tag('meta', :name => 'viewport', :content => "width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"),
  #       tag('meta', :name => 'author', :content => "Winda Tang")
  #   ].join("\n")
  #   alias self_meta_tag self_meta_tags
  # end
  # def init
  #
  # end
  if @description.nil?
    @description = "First WebSite";
  end
  if @keywords.nil?
    @description = "First WebSite";
  end
end
