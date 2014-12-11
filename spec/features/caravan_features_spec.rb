require 'rails_helper'

describe 'homepage' do
	context 'user opens page' do
		it 'should display a welcome message' do
			visit '/'
			expect(page).to have_content("Welcome to Cutler's Caravan Storage!")
		end

		it 'should have a sign up link' do
			visit '/'
			expect(page).to have_link("Sign up")
		end

		it 'should have a sign in link' do
			visit '/'
			expect(page).to have_link("Sign in")
		end
	end
end