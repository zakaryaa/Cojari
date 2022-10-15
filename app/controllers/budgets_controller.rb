class BudgetsController < ApplicationController
  before_action :find_budget, only: [:show, :edit, :update]

  def index
    @budgets = Budget.all
  end

  def show
  end

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
    redirect_to @budget, :notice => "Successfully created budget."
    else
    render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @budget.update(budget_params)
    redirect_to @budget, :notice  => "Successfully updated budget."
    else
    render :action => 'edit'
    end
  end

private

  def budget_params
    params.require(:budget).permit(:budget_type; :budget_status; :budget_start_date; :budget_end_date; :budget_amount; :budget_title; :coproperty_id)
  end

  def find_budget
    @budget = budget.find(params[:id])
  end
end