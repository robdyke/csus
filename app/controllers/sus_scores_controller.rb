class SusScoresController < ApplicationController
  before_action :set_sus_score, only: [:show, :edit, :update, :destroy]

  # GET /sus_scores
  # GET /sus_scores.json
  def index
    @sus_scores = SusScore.all
  end

  # GET /sus_scores/1
  # GET /sus_scores/1.json
  def show
  end

  # GET /sus_scores/new
  def new
    @sus_score = SusScore.new
  end

  # GET /sus_scores/1/edit
  def edit
  end

  # POST /sus_scores
  # POST /sus_scores.json
  def create
    @sus_score = SusScore.new(sus_score_params)

    respond_to do |format|
      if @sus_score.save
        format.html { redirect_to @sus_score, notice: 'Sus score was successfully created.' }
        format.json { render :show, status: :created, location: @sus_score }
      else
        format.html { render :new }
        format.json { render json: @sus_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sus_scores/1
  # PATCH/PUT /sus_scores/1.json
  def update
    respond_to do |format|
      if @sus_score.update(sus_score_params)
        format.html { redirect_to @sus_score, notice: 'Sus score was successfully updated.' }
        format.json { render :show, status: :ok, location: @sus_score }
      else
        format.html { render :edit }
        format.json { render json: @sus_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sus_scores/1
  # DELETE /sus_scores/1.json
  def destroy
    @sus_score.destroy
    respond_to do |format|
      format.html { redirect_to sus_scores_url, notice: 'Sus score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sus_score
      @sus_score = SusScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sus_score_params
      params.require(:sus_score)
        .permit(:reduces_the_risk_of_clinical_error,
          :support_is_hard_to_access,
          :improves_quality_clinical_care,
          :consultation_adversely_affected,
          :gives_me_key_information_needed,
          :total_csus_score )
    end
end
