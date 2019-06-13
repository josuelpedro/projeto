require 'test_helper'

class AluguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alugue = alugues(:one)
  end

  test "should get index" do
    get alugues_url
    assert_response :success
  end

  test "should get new" do
    get new_alugue_url
    assert_response :success
  end

  test "should create alugue" do
    assert_difference('Alugue.count') do
      post alugues_url, params: { alugue: { cliente_id: @alugue.cliente_id, data_devolucao: @alugue.data_devolucao, data_retirada: @alugue.data_retirada, moto_id: @alugue.moto_id, preco: @alugue.preco, status: @alugue.status } }
    end

    assert_redirected_to alugue_url(Alugue.last)
  end

  test "should show alugue" do
    get alugue_url(@alugue)
    assert_response :success
  end

  test "should get edit" do
    get edit_alugue_url(@alugue)
    assert_response :success
  end

  test "should update alugue" do
    patch alugue_url(@alugue), params: { alugue: { cliente_id: @alugue.cliente_id, data_devolucao: @alugue.data_devolucao, data_retirada: @alugue.data_retirada, moto_id: @alugue.moto_id, preco: @alugue.preco, status: @alugue.status } }
    assert_redirected_to alugue_url(@alugue)
  end

  test "should destroy alugue" do
    assert_difference('Alugue.count', -1) do
      delete alugue_url(@alugue)
    end

    assert_redirected_to alugues_url
  end
end
