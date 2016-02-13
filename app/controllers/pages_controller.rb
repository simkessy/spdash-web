class PagesController < ApplicationController
  include HighVoltage::StaticPage
  before_filter :authenticate

  def activate
  end

end
