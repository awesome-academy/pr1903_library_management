class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_ransack
  before_action :current_cart
  
  def current_cart
    if user_signed_in?
      if session[:cart_id]
        cart = Cart.find_by(id: session[:cart_id])
        if cart.present?
          @current_cart = cart
        else
          session[:cart_id] = nil
        end
      end

      if session[:cart_id] == nil
        @current_cart = Cart.create
        session[:cart_id] = @current_cart.id
      end
    end
  end

  protected
 
  def configure_permitted_parameters
    added_attrs = [:name, :email, :password, :password_confirmation, :remember_me, :avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def set_ransack
    @search = Book.ransack(params[:q])
    @books = @search.result.page(params[:page])
  end
end
