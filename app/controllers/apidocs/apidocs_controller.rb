require 'digest/sha1'
require_relative '../../../lib/apidocs/apidocs'

class Apidocs::ApidocsController < ActionController::Base
  def index
    @routes = ::ApiDocs.new.generate_html
    render 'apidocs/index'
  end
end
