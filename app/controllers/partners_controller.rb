class PartnersController < ApplicationController

  before_action :set_partner, only: [:edit, :update, :show, :destroy]

  def index
    require_user
    @partners = Partner.all
   end

   def set_partner
     @partner = Partner.find(params[:id])
    end

  def new
    require_user
    @partner = Partner.new
  end

  def create
    require_user
    @partner = Partner.new(partner_params)
    if @partner.save
      flash[:success] = "#{@partner.company_name} a été ajouté.e."
      redirect_to partners_path
    else
     render 'new'
    end
  end

  def edit
    require_user
    @partner = Partner.find(params[:id])
  end

  def update
    require_user
    @partner = Partner.find(params[:id])
    if @partner.update(partner_params)
     flash[:success] = "Nous avons bien mis à jour les informations concernant #{@partner.company_name}."
     redirect_to partners_path
    else
     render 'edit'
    end
   end

  def destroy
    require_user
    @partner.destroy
    flash[:notice] = "#{@partner.company_name} a bien été supprimé."
    redirect_to partners_path
  end

  private
    def partner_params
      params.require(:partner).permit(:company_name, :status, :grand_groupe, :company_logo)
    end

end
