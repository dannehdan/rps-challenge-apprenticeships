def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Dan"
  click_button 'Submit'
end