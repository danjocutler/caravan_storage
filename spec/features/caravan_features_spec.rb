require 'rails_helper'

describe 'homepage' do
	context 'new user opens page' do
		it 'should display a welcome message' do
			visit '/caravans'
			expect(page).to have_content("Welcome to Cutler's Caravan Storage!" )
		end
	end
end