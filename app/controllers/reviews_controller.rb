class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all.order(created_at: :desc)
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  def import
    Review.import(params[:file])
    redirect_to reviews_path, notice: "Reviews imported"
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = current_user.reviews.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def sus_modal
    @sus_score = SusScore.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(
        :id,
        :trust_id,      #foreign_key
        :user_id,       #foreign_key
        :system_id,     #foreign_key
        :review_title,
        :review_positive_text,
        :sus_score_placeholder,
        :csus_score_placeholder,
        :star_rating,
        :number_of_views,
        :likes,
        :dislikes,
        :review_negative_text,
        :trust_type,
        :trust_name,
        :system_name,
        :csus_response_id)
    end
end
