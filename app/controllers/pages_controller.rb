class PagesController < ApplicationController

  def index
    @users = User.all
    current_user
    @partners = Partner.all
    @partners_startups = []
    @partners_gg = []
    @partners.each do |partner|
      if partner.grand_groupe == true
        then @partners_gg << partner
      else @partners_startups << partner
      end
    end
  end

  def startups
    @partners = Partner.all
  end

  def investment
  end

  def contact
  end




end
