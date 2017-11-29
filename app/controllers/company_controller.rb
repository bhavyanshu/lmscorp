class CompanyController < ApplicationController

  def index
    @companies = Company.all
    render :json => {:data => @companies}
  end

  def alphabatical_index
    @companies = Company.order(:name)
    render :json => {:data => @companies}
  end

  def modern_index
    @exclusion = ['custom', 'legacy']
    @plan = Plan.where.not(plan_level: @exclusion)
    @companies = Company.where(plan_id: @plan)
    render :json => {:data => @companies}
  end

end
