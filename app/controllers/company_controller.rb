class CompanyController < ApplicationController

  def index
    @companies = Company.all
    render :json => {:data => @companies}
  end

end
