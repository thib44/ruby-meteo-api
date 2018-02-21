require 'test_helper'

class MeteoStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meteo_station = meteo_stations(:one)
  end

  test "should get index" do
    get meteo_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_meteo_station_url
    assert_response :success
  end

  test "should create meteo_station" do
    assert_difference('MeteoStation.count') do
      post meteo_stations_url, params: { meteo_station: {  } }
    end

    assert_redirected_to meteo_station_url(MeteoStation.last)
  end

  test "should show meteo_station" do
    get meteo_station_url(@meteo_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_meteo_station_url(@meteo_station)
    assert_response :success
  end

  test "should update meteo_station" do
    patch meteo_station_url(@meteo_station), params: { meteo_station: {  } }
    assert_redirected_to meteo_station_url(@meteo_station)
  end

  test "should destroy meteo_station" do
    assert_difference('MeteoStation.count', -1) do
      delete meteo_station_url(@meteo_station)
    end

    assert_redirected_to meteo_stations_url
  end
end
