class AccountsController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @accounts = @user.accounts.all
    end

    def show
        @user = User.find(params[:user_id])
        @account = @user.accounts.find(params[:id])
    end

    def new
        @user = User.find(params[:user_id])
        @account = @user.accounts.new
    end

    def edit
        @user = User.find(params[:user_id])
        @account = @user.accounts.find(params[:id])
    end

    def create
        @user = User.find(params[:user_id])
        @account = @user.accounts.create(account_params)

        if @account.save
            redirect_to @user
        else
            render 'new'
        end
    end

    def update
        @user = User.find(params[:user_id])
        @account = @user.accounts.find(params[:id])
        if @account.update(account_params)
            redirect_to @user
        else
            render 'edit'
        end
    end

    def destroy
        @user = User.find(params[:user_id])
        @account = @user.accounts.find(params[:id])
        @account.destroy

        redirect_to @user
    end

    private
        def account_params
            params.require(:account).permit(:name, :balance, :accttype, :holdings)
        end
end
