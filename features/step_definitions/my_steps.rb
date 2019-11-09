Given(/^visit contact page$/) do
  visit BASE_URL + CONTACT_PATH
end

When(/^click Submit button$/) do
  find('.hs-button.primary.large').click
end

Then(/^validate email error$/) do
end


When(/^fill "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

Then(/^validate "([^"]*)" message$/) do |msg|
  page.should have_content(msg)
end