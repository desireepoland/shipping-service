class EstimatesController < ApplicationController
  include Estimator
  require 'active_shipping'

  def quote
    query= Shipments.query(params)
    #takes shipping params
    #does stuff with estimator wrapper
    #renders json
    if quote
      render :json => quote.as_json(except: [:created_at, :updated_at]),
      :status => :ok
    else
      render :json => [], :status => :no_content
    end
  end




private

  def shipping_params
    params.require(:shipping_params).permit(:destination[:country, :state, :city, :postal_code], :package[:origin[:country, :state, :city, :postal_code], :package_item[:weight, :dimensions]])
  end


end
