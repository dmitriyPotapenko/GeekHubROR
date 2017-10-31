class SitesController < ApplicationController
  before_action :find_site, only: [:show, :edit, :update, :destroy]

  def index
    @sites = Site.all
  end

  def new
    @sites = Site.new
  end

  def create
    Site.create(site_params)

    redirect_to sites_path
  end

  def show
  end

  def edit
  end

  def update
    @sites.update(site_params)

    redirect_to sites_path
  end

  def destroy
    @sites.destroy

    redirect_to sites_path
  end

  private

  def find_site
    @sites = Site.find(params[:id])
  end

  def site_params
    params.require(:site).permit(:name, :address, :description)
  end
end
