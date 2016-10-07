require 'test_helper'

class BasketballStatsControllerTest < ActionController::TestCase
  setup do
    @basketball_stat = basketball_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basketball_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basketball_stat" do
    assert_difference('BasketballStat.count') do
      post :create, basketball_stat: { assists: @basketball_stat.assists, blocks: @basketball_stat.blocks, field_goal_percentage: @basketball_stat.field_goal_percentage, fouls: @basketball_stat.fouls, free_throws_made: @basketball_stat.free_throws_made, free_throws_missed: @basketball_stat.free_throws_missed, rebounds: @basketball_stat.rebounds, steals: @basketball_stat.steals, technical_fouls: @basketball_stat.technical_fouls, three_pointers_made: @basketball_stat.three_pointers_made, three_pointers_missed: @basketball_stat.three_pointers_missed, total_points: @basketball_stat.total_points, two_pointers_made: @basketball_stat.two_pointers_made, two_pointers_missed: @basketball_stat.two_pointers_missed }
    end

    assert_redirected_to basketball_stat_path(assigns(:basketball_stat))
  end

  test "should show basketball_stat" do
    get :show, id: @basketball_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basketball_stat
    assert_response :success
  end

  test "should update basketball_stat" do
    patch :update, id: @basketball_stat, basketball_stat: { assists: @basketball_stat.assists, blocks: @basketball_stat.blocks, field_goal_percentage: @basketball_stat.field_goal_percentage, fouls: @basketball_stat.fouls, free_throws_made: @basketball_stat.free_throws_made, free_throws_missed: @basketball_stat.free_throws_missed, rebounds: @basketball_stat.rebounds, steals: @basketball_stat.steals, technical_fouls: @basketball_stat.technical_fouls, three_pointers_made: @basketball_stat.three_pointers_made, three_pointers_missed: @basketball_stat.three_pointers_missed, total_points: @basketball_stat.total_points, two_pointers_made: @basketball_stat.two_pointers_made, two_pointers_missed: @basketball_stat.two_pointers_missed }
    assert_redirected_to basketball_stat_path(assigns(:basketball_stat))
  end

  test "should destroy basketball_stat" do
    assert_difference('BasketballStat.count', -1) do
      delete :destroy, id: @basketball_stat
    end

    assert_redirected_to basketball_stats_path
  end
end
