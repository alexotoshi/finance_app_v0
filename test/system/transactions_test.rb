require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "creating a Transaction" do
    visit transactions_url
    click_on "New Transaction"

    check "Food" if @transaction.food
    check "Gas" if @transaction.gas
    fill_in "Merchant", with: @transaction.merchant
    fill_in "Note", with: @transaction.note
    fill_in "Price", with: @transaction.price
    fill_in "Transaction date", with: @transaction.transaction_date
    fill_in "Transaction type", with: @transaction.transaction_type
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "updating a Transaction" do
    visit transactions_url
    click_on "Edit", match: :first

    check "Food" if @transaction.food
    check "Gas" if @transaction.gas
    fill_in "Merchant", with: @transaction.merchant
    fill_in "Note", with: @transaction.note
    fill_in "Price", with: @transaction.price
    fill_in "Transaction date", with: @transaction.transaction_date
    fill_in "Transaction type", with: @transaction.transaction_type
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Transaction" do
    visit transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transaction was successfully destroyed"
  end
end
