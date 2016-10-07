class BasketballStatsController < ApplicationController
  before_action :set_basketball_stat, only: [:show, :edit, :update, :destroy]

  # GET /basketball_stats
  # GET /basketball_stats.json
  def index
    @basketball_stats = BasketballStat.all
  end

  # GET /basketball_stats/1
  # GET /basketball_stats/1.json
  def show
  end

  # GET /basketball_stats/new
  def new
    @basketball_stat = BasketballStat.new
  end

  # GET /basketball_stats/1/edit
  def edit
  end

  # POST /basketball_stats
  # POST /basketball_stats.json
  def create
    @basketball_stat = BasketballStat.new(basketball_stat_params)

    respond_to do |format|
      if @basketball_stat.save
        format.html { redirect_to @basketball_stat, notice: 'Basketball stat was successfully created.' }
        format.json { render :show, status: :created, location: @basketball_stat }
      else
        format.html { render :new }
        format.json { render json: @basketball_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basketball_stats/1
  # PATCH/PUT /basketball_stats/1.json
  def update
    respond_to do |format|
      if @basketball_stat.update(basketball_stat_params)
        format.html { redirect_to @basketball_stat, notice: 'Basketball stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @basketball_stat }
      else
        format.html { render :edit }
        format.json { render json: @basketball_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basketball_stats/1
  # DELETE /basketball_stats/1.json
  def destroy
    @basketball_stat.destroy
    respond_to do |format|
      format.html { redirect_to basketball_stats_url, notice: 'Basketball stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basketball_stat
      @basketball_stat = BasketballStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basketball_stat_params
      params.require(:basketball_stat).permit(:total_points, :two_pointers_made, :two_pointers_missed, :three_pointers_made, :three_pointers_missed, :field_goal_percentage, :free_throws_made, :free_throws_missed, :assists, :rebounds, :blocks, :steals, :fouls, :technical_fouls)
    end
end
