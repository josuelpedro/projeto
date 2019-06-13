require "application_system_test_case"

class AluguesTest < ApplicationSystemTestCase
  setup do
    @alugue = alugues(:one)
  end

  test "visiting the index" do
    visit alugues_url
    assert_selector "h1", text: "Alugues"
  end

  test "creating a Alugue" do
    visit alugues_url
    click_on "New Alugue"

    fill_in "Cliente", with: @alugue.cliente_id
    fill_in "Data devolucao", with: @alugue.data_devolucao
    fill_in "Data retirada", with: @alugue.data_retirada
    fill_in "Moto", with: @alugue.moto_id
    fill_in "Preco", with: @alugue.preco
    check "Status" if @alugue.status
    click_on "Create Alugue"

    assert_text "Alugue was successfully created"
    click_on "Back"
  end

  test "updating a Alugue" do
    visit alugues_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @alugue.cliente_id
    fill_in "Data devolucao", with: @alugue.data_devolucao
    fill_in "Data retirada", with: @alugue.data_retirada
    fill_in "Moto", with: @alugue.moto_id
    fill_in "Preco", with: @alugue.preco
    check "Status" if @alugue.status
    click_on "Update Alugue"

    assert_text "Alugue was successfully updated"
    click_on "Back"
  end

  test "destroying a Alugue" do
    visit alugues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alugue was successfully destroyed"
  end
end
