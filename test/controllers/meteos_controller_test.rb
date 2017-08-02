require 'test_helper'

class MeteosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meteo = meteos(:one)
  end

  test "should get index" do
    get meteos_url
    assert_response :success
  end

  test "should get new" do
    get new_meteo_url
    assert_response :success
  end

  test "should create meteo" do
    assert_difference('Meteo.count') do
      post meteos_url, params: { meteo: {  } }
    end

    assert_redirected_to meteo_url(Meteo.last)
  end

  test "should show meteo" do
    get meteo_url(@meteo)
    assert_response :success
  end

  test "should get edit" do
    get edit_meteo_url(@meteo)
    assert_response :success
  end

  test "should update meteo" do
    patch meteo_url(@meteo), params: { meteo: {  } }
    assert_redirected_to meteo_url(@meteo)
  end

  test "should destroy meteo" do
    assert_difference('Meteo.count', -1) do
      delete meteo_url(@meteo)
    end

    assert_redirected_to meteos_url
  end
end
