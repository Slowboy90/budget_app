class ExpensesController < ApplicationController
	def new
		@expense = Expense.new
	end

	def create
		@expense = Expense.new(expense_params)

		if @expense.save
			redirect_to @expense
		else
			render 'new'
		end
	end

  def update
    @expense = Expense.find(params[:id])

    if @expense.update(expense_params)
      redirect_to @expense
    else
      render 'edit'
    end
  end

  def edit
    @expense = Expense.find(params[:id])    
  end

  def show
    @expense = Expense.find(params[:id])
  end

	def index
		@expenses = Expense.all
	end

	private

	def expense_params
		params.require(:expense).permit(:group, :cost, :amount, :date)
	end
end
