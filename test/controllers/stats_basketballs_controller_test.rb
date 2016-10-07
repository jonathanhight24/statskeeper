require 'test_helper'

class StatsBasketballsControllerTest < ActionController::TestCase
  setup do
    @stats_basketball = stats_basketballs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stats_basketballs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stats_basketball" do
    assert_difference('StatsBasketball.count') do
      post :create, stats_basketball: { assists: @stats_basketball.assists, blocks: @stats_basketball.blocks, field_goal_percentage: @stats_basketball.field_goal_percentage, fouls: @stats_basketball.fouls, free_throws_made: @stats_basketball.free_throws_made, free_throws_missed: @stats_basketball.free_throws_missed, rebounds: @stats_basketball.rebounds, steals: @stats_basketball.steals, technical_fouls: @stats_basketball.technical_fouls, three_pointers_made: @stats_basketball.three_pointers_made, three_pointers_missed: @stats_basketball.three_pointers_missed, total_points: @stats_basketball.total_points, two_pointers_made: @stats_basketball.two_pointers_made, two_pointers_missed: @stats_basketball.two_pointers_missed }
    end

    assert_redirected_to stats_basketball_path(assigns(:stats_basketball))
  end

  test "should show stats_basketball" do
    get :show, id: @stats_basketball
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stats_basketball
    assert_response :success
  end

  test "should update stats_basketball" do
    patch :update, id: @stats_basketball, stats_basketball: { assists: @stats_basketball.assists, blocks: @stats_basketball.blocks, field_goal_percentage: @stats_basketball.field_goal_percentage, fouls: @stats_basketball.fouls, free_throws_made: @stats_basketball.free_throws_made, free_throws_missed: @stats_basketball.free_throws_missed, rebounds: @stats_basketball.rebounds, steals: @stats_basketball.steals, technical_fouls: @stats_basketball.technical_fouls, three_pointers_made: @stats_basketball.three_pointers_made, three_pointers_missed: @stats_basketball.three_pointers_missed, total_points: @stats_basketball.total_points, two_pointers_made: @stats_basketball.two_pointers_made, two_pointers_missed: @stats_basketball.two_pointers_missed }
    assert_redirected_to stats_basketball_path(assigns(:stats_basketball))
  end

  test "should destroy stats_basketball" do
    assert_difference('StatsBasketball.count', -1) do
      delete :destroy, id: @stats_basketball
    end

    assert_redirected_to stats_basketballs_path
  end
end
