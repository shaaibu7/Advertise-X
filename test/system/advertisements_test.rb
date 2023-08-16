require 'application_system_test_case'

class AdvertisementsTest < ApplicationSystemTestCase
  setup do
    @advertisement = advertisements(:one)
  end

  test 'visiting the index' do
    visit advertisements_url
    assert_selector 'h1', text: 'Advertisements'
  end

  test 'should create advertisement' do
    visit advertisements_url
    click_on 'New advertisement'

    fill_in 'Duration', with: @advertisement.duration
    fill_in 'Name', with: @advertisement.name
    fill_in 'Package', with: @advertisement.package
    click_on 'Create Advertisement'

    assert_text 'Advertisement was successfully created'
    click_on 'Back'
  end

  test 'should update Advertisement' do
    visit advertisement_url(@advertisement)
    click_on 'Edit this advertisement', match: :first

    fill_in 'Duration', with: @advertisement.duration
    fill_in 'Name', with: @advertisement.name
    fill_in 'Package', with: @advertisement.package
    click_on 'Update Advertisement'

    assert_text 'Advertisement was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Advertisement' do
    visit advertisement_url(@advertisement)
    click_on 'Destroy this advertisement', match: :first

    assert_text 'Advertisement was successfully destroyed'
  end
end
