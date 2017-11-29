class CompanyController < ApplicationController

  def index
    @companies = Company.all
    render :json => {:data => @companies}
  end

  def alphabatical_index
    @companies = Company.order(:name)
    render :json => {:data => @companies}
  end

end
