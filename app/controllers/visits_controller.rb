class VisitsController < ApplicationController

  def create
    @thesubject = Thesubject.find(params[:thesubject_id])
    @visit = @thesubject.visits.create!(visit_params)
    redirect_to @thesubject, :notice => 'Visit Created!'
  end

  def visit_1

  end

  def visit_2

  end

  private
  def visit_params
    params.require(:visit).permit(:dov1, :icfDt, :sex, :cont1)
  end

end