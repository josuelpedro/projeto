require 'test_helper'

class SinistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sinistro = sinistros(:one)
  end

  test "should get index" do
    get sinistros_url
    assert_response :success
  end

  test "should get new" do
    get new_sinistro_url
    assert_response :success
  end

  test "should create sinistro" do
    assert_difference('Sinistro.count') do
      post sinistros_url, params: { sinistro: { alugue_id: @sinistro.alugue_id, descrição: @sinistro.descrição, preco: @sinistro.preco, status: @sinistro.status, tipo: @sinistro.tipo } }
    end

    assert_redirected_to sinistro_url(Sinistro.last)
  end

  test "should show sinistro" do
    get sinistro_url(@sinistro)
    assert_response :success
  end

  test "should get edit" do
    get edit_sinistro_url(@sinistro)
    assert_response :success
  end

  test "should update sinistro" do
    patch sinistro_url(@sinistro), params: { sinistro: { alugue_id: @sinistro.alugue_id, descrição: @sinistro.descrição, preco: @sinistro.preco, status: @sinistro.status, tipo: @sinistro.tipo } }
    assert_redirected_to sinistro_url(@sinistro)
  end

  test "should destroy sinistro" do
    assert_difference('Sinistro.count', -1) do
      delete sinistro_url(@sinistro)
    end

    assert_redirected_to sinistros_url
  end
end
