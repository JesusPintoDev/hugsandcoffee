class AccountsController < ApplicationController
    before_action :set_account, only: [:show, :edit, :update, :destroy]
    before_action :set_profile, only: [:index, :new, :create]
  
    # GET /accounts
    # GET /accounts.json
    def index
      @accounts = Account.all
    end
  
    # GET /accounts/1
    # GET /accounts/1.json
    def show
    end
  
    # GET /accounts/new
    def new
      @account = Account.new
    end
  
    # GET /accounts/1/edit
    def edit
    end
  
    # POST /accounts
    # POST /accounts.json
    def create
      @account = @profile.accounts.build(account_params)
      if @account.save
        redirect_to my_profile_accounts_url, notice: '¡Cuenta añadida satisfactoriamente!' 
      end
    end
  
    # PATCH/PUT /accounts/1
    # PATCH/PUT /accounts/1.json
    def update
        if @account.update(account_params)
          redirect_to my_profile_accounts_path(@account.profile_id), notice: '¡Cuenta editada satisfactoriamente!'
        end
    end
  
    # DELETE /accounts/1
    # DELETE /accounts/1.json
    def destroy
      @account.destroy
      respond_to do |format|
        format.html { redirect_to my_profile_accounts_path(@account.profile_id), notice: 'Cuenta eliminada satisfactoriamente.' }
      end
    end
  
    private

    def set_profile
      @user_email = current_user.email
      @profile = Profile.find(params[:id])
    end
      # Use callbacks to share common setup or constraints between actions.
      def set_account
        @account = Account.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def account_params
        params.require(:account).permit(:id, :entity, :email, :account_number, :rif_ci, :account_type)
      end
  end
  