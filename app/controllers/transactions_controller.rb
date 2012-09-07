class TransactionsController < ApplicationController
  load_and_authorize_resource
  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = Transaction.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transactions }
    end
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
    @transaction = Transaction.find(params[:id])
    authorize! :read, @transactions 
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transaction }
    end
  end

  # GET /transactions/new
  # GET /transactions/new.json
  def new
    @transaction = Transaction.new

    @customer = Customer.new
    @transaction.customer_id = @customer.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transaction }
    end
  end

  # GET /transactions/1/edit
  def edit

    @transaction = Transaction.find(params[:id])

  end

  # POST /transactions
  # POST /transactions.json
  def create
    customer_id = params[:transaction].delete(:customer_id)
    product_id = params[:transaction].delete(:product_id)
    @transaction = Transaction.new(params[:transaction])
    @transaction.customer_id = customer_id
    @transaction.product_id = product_id


    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render json: @transaction, status: :created, location: @transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transactions/1
  # PUT /transactions/1.json
  def update
    customer_id = params[:transaction].delete(:customer_id)
    product_id = params[:transaction].delete(:product_id)
    @transaction = Transaction.find(params[:id])
    @transaction.customer_id = customer_id
    @transaction.product_id = product_id

    respond_to do |format|
      if @transaction.update_attributes(params[:transaction])
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to transactions_url }
      format.json { head :no_content }
    end
  end
end
