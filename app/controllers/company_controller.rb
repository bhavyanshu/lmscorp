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

  def not_trailing_index
    # Not actively trailing is unclear
    # So I am Assuming actively trailing means companies that
    # are also on basic plan and trial period is of 30 days
    @plan = Plan.where(plan_level: 'basic')
    @companies = Company.where(plan_id: @plan).where('trial_status <= ?', Time.zone.now - 30.days)
    render :json => {:data => @companies}
  end

end
