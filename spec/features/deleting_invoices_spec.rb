require 'rails_helper'

feature 'Deleting invoices' do
  scenario 'Delete an invoice from the listing page' do
    invoice = FactoryGirl.create(:invoice)
    visit "/invoices/#{invoice.id}/edit"
    click_link 'Destroy'
    expect(page).to have_content('Invoice was successfully destroyed')
    expect(page).to have_no_content('XXX-1')
  end
end

