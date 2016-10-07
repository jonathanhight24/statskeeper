class StatsBasketballsController < ApplicationController
  before_action :set_stats_basketball, only: [:show, :edit, :update, :destroy]

  # GET /stats_basketballs
  # GET /stats_basketballs.json
  def index
    @stats_basketballs = StatsBasketball.all
  end

  # GET /stats_basketballs/1
  # GET /stats_basketballs/1.json
  def show
  end

  # GET /stats_basketballs/new
  def new
    @stats_basketball = StatsBasketball.new
  end

  # GET /stats_basketballs/1/edit
  def edit
  end

  # POST /stats_basketballs
  # POST /stats_basketballs.json
  def create
    @stats_basketball = StatsBasketball.new(stats_basketball_params)

    respond_to do |format|
      if @stats_basketball.save
        format.html { redirect_to @stats_basketball, notice: 'Stats basketball was successfully created.' }
        format.json { render :show, status: :created, location: @stats_basketball }
      else
        format.html { render :new }
        format.json { render json: @stats_basketball.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stats_basketballs/1
  # PATCH/PUT /stats_basketballs/1.json
  def update
    respond_to do |format|
      if @stats_basketball.update(stats_basketball_params)
        format.html { redirect_to @stats_basketball, notice: 'Stats basketball was successfully updated.' }
        format.json { render :show, status: :ok, location: @stats_basketball }
      else
        format.html { render :edit }
        format.json { render json: @stats_basketball.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stats_basketballs/1
  # DELETE /stats_basketballs/1.json
  def destroy
    @stats_basketball.destroy
    respond_to do |format|
      format.html { redirect_to stats_basketballs_url, notice: 'Stats basketball was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stats_basketball
      @stats_basketball = StatsBasketball.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stats_basketball_params
      params.require(:stats_basketball).permit(:total_points, :two_pointers_made, :two_pointers_missed, :three_pointers_made, :three_pointers_missed, :field_goal_percentage, :free_throws_made, :free_throws_missed, :assists, :rebounds, :blocks, :steals, :fouls, :technical_fouls)
    end
end
