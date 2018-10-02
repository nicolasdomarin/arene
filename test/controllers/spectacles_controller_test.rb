require 'test_helper'

class SpectaclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spectacle = spectacles(:one)
  end

  test "should get index" do
    get spectacles_url
    assert_response :success
  end

  test "should get new" do
    get new_spectacle_url
    assert_response :success
  end

  test "should create spectacle" do
    assert_difference('Spectacle.count') do
      post spectacles_url, params: { spectacle: { cle_representation: @spectacle.cle_representation, date_fin: @spectacle.date_fin, date_representation: @spectacle.date_representation, filiere: @spectacle.filiere, heure_fin: @spectacle.heure_fin, heure_representation: @spectacle.heure_representation, nom: @spectacle.nom, prix: @spectacle.prix, representation: @spectacle.representation, type: @spectacle.type } }
    end

    assert_redirected_to spectacle_url(Spectacle.last)
  end

  test "should show spectacle" do
    get spectacle_url(@spectacle)
    assert_response :success
  end

  test "should get edit" do
    get edit_spectacle_url(@spectacle)
    assert_response :success
  end

  test "should update spectacle" do
    patch spectacle_url(@spectacle), params: { spectacle: { cle_representation: @spectacle.cle_representation, date_fin: @spectacle.date_fin, date_representation: @spectacle.date_representation, filiere: @spectacle.filiere, heure_fin: @spectacle.heure_fin, heure_representation: @spectacle.heure_representation, nom: @spectacle.nom, prix: @spectacle.prix, representation: @spectacle.representation, type: @spectacle.type } }
    assert_redirected_to spectacle_url(@spectacle)
  end

  test "should destroy spectacle" do
    assert_difference('Spectacle.count', -1) do
      delete spectacle_url(@spectacle)
    end

    assert_redirected_to spectacles_url
  end
end
