class ApplicationController < ActionController::Base
    require 'stripe'
    puts "KEY- #{ENV['STRIPE_SECRET_KEY']}"
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
end
