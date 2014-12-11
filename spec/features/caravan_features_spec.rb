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

	context 'user signs up' do
		it 'should display a successful sign up confirmation' do
			visit '/'
			click_link 'Sign up'
			fill_in 'Email', with: 'test@test.com'
			fill_in 'Password', with: 'testtest'
			fill_in 'Password confirmation', with: 'testtest'
			click_button 'Sign up'
			expect(page).to have_content 'Welcome! You have signed up successfully.'
		end

		it 'should display a successful sign up confirmation' do
			visit '/'
			click_link 'Sign up'
			fill_in 'Email', with: 'test@test.com'
			fill_in 'Password', with: 'testtest'
			fill_in 'Password confirmation', with: 'testtest'
			click_button 'Sign up'
			expect(page).to have_link 'Sign out'
		end
	end
end