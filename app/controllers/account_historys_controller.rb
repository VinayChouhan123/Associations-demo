class AccountHistorysController < ApplicationController
  def index
    @account_historys = AccountHistory.all
  end

  def show
    @account_history = AccountHistory.find(params[:id])
  end

  def new
    @account_history = AccountHistory.new
  end

  def create
    @account_history = AccountHistory.new(account_history_params)

    if @account_history.save
      redirect_to @account_history
    else
      render :new
    end
  end

  def edit
    @account_history = AccountHistory.find(params[:id])
  end

  def update
    @account_history = AccountHistory.find(params[:id])

    if @account_history.update(account_history_params)
      redirect_to @account_history
    else
      render :edit
    end
  end

  def destroy
    @account_history = AccountHistory.find(params[:id])
    @account_history.destroy

    redirect_to account_historys_path
  end

  private

    def account_history_params
      params.require(:account_history).permit(:accnumber, :name, :account_id)
    end
end
