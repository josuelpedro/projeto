require "application_system_test_case"

class MotosTest < ApplicationSystemTestCase
  setup do
    @moto = motos(:one)
  end

  test "visiting the index" do
    visit motos_url
    assert_selector "h1", text: "Motos"
  end

  test "creating a Moto" do
    visit motos_url
    click_on "New Moto"

    check "Disponivel" if @moto.disponivel
    fill_in "Marca", with: @moto.marca
    fill_in "Modelo", with: @moto.modelo
    fill_in "Tipo", with: @moto.tipo
    click_on "Create Moto"

    assert_text "Moto was successfully created"
    click_on "Back"
  end

  test "updating a Moto" do
    visit motos_url
    click_on "Edit", match: :first

    check "Disponivel" if @moto.disponivel
    fill_in "Marca", with: @moto.marca
    fill_in "Modelo", with: @moto.modelo
    fill_in "Tipo", with: @moto.tipo
    click_on "Update Moto"

    assert_text "Moto was successfully updated"
    click_on "Back"
  end

  test "destroying a Moto" do
    visit motos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Moto was successfully destroyed"
  end
end
