module Spree
  UsersController.class_eval do
    def update_gdpr
      @user ||= spree_current_user
      if @user.update_attributes(user_gdpr_params)
        redirect_to spree.account_url, notice: Spree.t(:account_gdpr_updated)
      else
        render :edit
      end
    end

    private

    def user_gdpr_params
      params.require(:user).permit(:allows_user_preference_cookies, :allows_marketing_cookies, :allows_analytics_cookies, :accepts_marketing_emails, :accepts_terms_and_conditions)
    end
  end
end