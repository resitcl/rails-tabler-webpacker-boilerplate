class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  before_action :authenticate_user!
  respond_to :html, :json

  prepend_view_path Rails.root.join('app/javascript/')

  def forbidden
    respond_to do |format|
      format.html { render template: 'errors/403', layout: 'layouts/application', status: 403 }
      format.json { render json: { error: 'Forbidden' }, status: 403 }
    end
  end

  def not_found
    respond_to do |format|
      format.html { not_found_html }
      format.json { render json: { error: 'Not found' }, status: 404 }
    end
  end

  def unprocessable_entity
    respond_to do |format|
      format.html { render template: 'errors/422', layout: 'layouts/application', status: 422 }
      format.json { render json: { error: 'Unprocessable Entity' }, status: 422 }
    end
  end

  def not_found_html
    render template: 'errors/404', layout: 'layouts/application', status: 404
  end

end
