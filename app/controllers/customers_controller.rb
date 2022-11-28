class CustomersController < ApplicationController
  def index
    @page_title = "Customers"
    @customers = Customer.all
  end

  def alphabetized
    @page_title = "Alphabetized Customers"
    @customers = Customer.order(:full_name)
    render :index
  end

  def missing_email
    @page_title = "Customers Missing Email"
    @customers = Customer.where(email_address: "")
    render :index
  end
end
