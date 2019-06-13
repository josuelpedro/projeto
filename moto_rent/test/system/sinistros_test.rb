require "application_system_test_case"

class SinistrosTest < ApplicationSystemTestCase
  setup do
    @sinistro = sinistros(:one)
  end

  test "visiting the index" do
    visit sinistros_url
    assert_selector "h1", text: "Sinistros"
  end

  test "creating a Sinistro" do
    visit sinistros_url
    click_on "New Sinistro"

    fill_in "Alugue", with: @sinistro.alugue_id
    fill_in "Descrição", with: @sinistro.descrição
    fill_in "Preco", with: @sinistro.preco
    check "Status" if @sinistro.status
    fill_in "Tipo", with: @sinistro.tipo
    click_on "Create Sinistro"

    assert_text "Sinistro was successfully created"
    click_on "Back"
  end

  test "updating a Sinistro" do
    visit sinistros_url
    click_on "Edit", match: :first

    fill_in "Alugue", with: @sinistro.alugue_id
    fill_in "Descrição", with: @sinistro.descrição
    fill_in "Preco", with: @sinistro.preco
    check "Status" if @sinistro.status
    fill_in "Tipo", with: @sinistro.tipo
    click_on "Update Sinistro"

    assert_text "Sinistro was successfully updated"
    click_on "Back"
  end

  test "destroying a Sinistro" do
    visit sinistros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sinistro was successfully destroyed"
  end
end
