require 'rails_helper'

feature "Managecomments", type: feature do
	scenario "Create a new comment" do
		user = create(:regitered_user)
		login_as(:regitered_user)
		visit '/products/1/show'
		expect(page).to have_link('New comment')
		click_link 'New comment'

		fill_in 'body', with: 'My comment for testing'

		click_button 'Add comment'
		expect(page).to have_text('Your Inquiry was successfully sent to Admin , Waiting for Admin\'s answer ....')
	end
end	