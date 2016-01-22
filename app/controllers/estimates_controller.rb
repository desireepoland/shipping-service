class EstimatesController < ApplicationController
  require_relative "/lib/estimator.rb"
  require 'active_shipping'

  def quote
    ship_params = strong_shipping_params
    estimate = Estimator::Estimate.query(ship_params)
    if estimate
      render :json => estimate.to_json, :status => :ok
    else
      render :json => [], :status => :no_content
    end
  end

private

  def strong_shipping_params
    params.require(:shipping_params).permit(:destination => [:country, :state, :city, :postal_code], :packages => {:origin => [:country, :state, :city, :postal_code], :package_items => [:weight, :height, :length, :width]})
  end


end
