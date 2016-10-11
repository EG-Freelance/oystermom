class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :edit, :update, :destroy]

  # GET /subscriptions
  # GET /subscriptions.json
  def index
    @subscriptions = Subscription.all
  end

  # GET /subscriptions/1
  # GET /subscriptions/1.json
  def show
  end

  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
  end

  # GET /subscriptions/1/edit
  def edit
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    if params[:commit] == "Subscribe"
      @subscription = Subscription.new(subscription_params)

      respond_to do |format|
        if @subscription.save
          flash[:notice] = 'You have subscribed to OysterMom!'
          format.html { redirect_to :root }
          format.json { render :show, status: :created, location: @subscription }
        else
          flash[:alert] = "Please make sure that the email, first name, last name, and location are correct."
          format.html { redirect_to :root }
          format.json { render json: @subscription.errors, status: :unprocessable_entity }
        end
      end
    else
      @subscription = Subscription.find_by(email: params[:email])
      
      respond_to do |format|
        if @subscription.nil?
          flash[:alert] = "We couldn't find a subscription matching that email address"
          format.html { redirect_to :root }
        elsif @subscription.destroy
          flash[:notice] = 'You have unsubscribed from OysterMom'
          format.html { redirect_to :root }
        else
          flash[:alert] = @subscription.errors
          format.html { redirect_to :root }
        end
      end
    end
  end

  # PATCH/PUT /subscriptions/1
  # PATCH/PUT /subscriptions/1.json
  def update
    respond_to do |format|
      if @subscription.update(subscription_params)
        format.html { redirect_to @subscription, notice: 'Subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscription }
      else
        format.html { render :edit }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.json
  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_url, notice: 'Subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit(:email, :first_name, :last_name, :address)
    end
end
