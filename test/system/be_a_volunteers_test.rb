require "application_system_test_case"

class BeAVolunteersTest < ApplicationSystemTestCase
  setup do
    @be_a_volunteer = be_a_volunteers(:one)
  end

  test "visiting the index" do
    visit be_a_volunteers_url
    assert_selector "h1", text: "Be A Volunteers"
  end

  test "creating a Be a volunteer" do
    visit be_a_volunteers_url
    click_on "New Be A Volunteer"

    fill_in "Branch", with: @be_a_volunteer.Branch
    fill_in "Contact number", with: @be_a_volunteer.Contact_Number
    fill_in "Name", with: @be_a_volunteer.Name
    fill_in "Projects", with: @be_a_volunteer.Projects
    fill_in "Recruitment year", with: @be_a_volunteer.Recruitment_Year
    fill_in "Remarks", with: @be_a_volunteer.Remarks
    fill_in "Role", with: @be_a_volunteer.Role
    fill_in "Roll number", with: @be_a_volunteer.Roll_Number
    fill_in "Skill set", with: @be_a_volunteer.Skill_Set
    fill_in "Status", with: @be_a_volunteer.Status
    click_on "Create Be a volunteer"

    assert_text "Be a volunteer was successfully created"
    click_on "Back"
  end

  test "updating a Be a volunteer" do
    visit be_a_volunteers_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @be_a_volunteer.Branch
    fill_in "Contact number", with: @be_a_volunteer.Contact_Number
    fill_in "Name", with: @be_a_volunteer.Name
    fill_in "Projects", with: @be_a_volunteer.Projects
    fill_in "Recruitment year", with: @be_a_volunteer.Recruitment_Year
    fill_in "Remarks", with: @be_a_volunteer.Remarks
    fill_in "Role", with: @be_a_volunteer.Role
    fill_in "Roll number", with: @be_a_volunteer.Roll_Number
    fill_in "Skill set", with: @be_a_volunteer.Skill_Set
    fill_in "Status", with: @be_a_volunteer.Status
    click_on "Update Be a volunteer"

    assert_text "Be a volunteer was successfully updated"
    click_on "Back"
  end

  test "destroying a Be a volunteer" do
    visit be_a_volunteers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Be a volunteer was successfully destroyed"
  end
end
