require "test_helper"

class BeAVolunteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @be_a_volunteer = be_a_volunteers(:one)
  end

  test "should get index" do
    get be_a_volunteers_url
    assert_response :success
  end

  test "should get new" do
    get new_be_a_volunteer_url
    assert_response :success
  end

  test "should create be_a_volunteer" do
    assert_difference('BeAVolunteer.count') do
      post be_a_volunteers_url, params: { be_a_volunteer: { Branch: @be_a_volunteer.Branch, Contact_Number: @be_a_volunteer.Contact_Number, Name: @be_a_volunteer.Name, Projects: @be_a_volunteer.Projects, Recruitment_Year: @be_a_volunteer.Recruitment_Year, Remarks: @be_a_volunteer.Remarks, Role: @be_a_volunteer.Role, Roll_Number: @be_a_volunteer.Roll_Number, Skill_Set: @be_a_volunteer.Skill_Set, Status: @be_a_volunteer.Status } }
    end

    assert_redirected_to be_a_volunteer_url(BeAVolunteer.last)
  end

  test "should show be_a_volunteer" do
    get be_a_volunteer_url(@be_a_volunteer)
    assert_response :success
  end

  test "should get edit" do
    get edit_be_a_volunteer_url(@be_a_volunteer)
    assert_response :success
  end

  test "should update be_a_volunteer" do
    patch be_a_volunteer_url(@be_a_volunteer), params: { be_a_volunteer: { Branch: @be_a_volunteer.Branch, Contact_Number: @be_a_volunteer.Contact_Number, Name: @be_a_volunteer.Name, Projects: @be_a_volunteer.Projects, Recruitment_Year: @be_a_volunteer.Recruitment_Year, Remarks: @be_a_volunteer.Remarks, Role: @be_a_volunteer.Role, Roll_Number: @be_a_volunteer.Roll_Number, Skill_Set: @be_a_volunteer.Skill_Set, Status: @be_a_volunteer.Status } }
    assert_redirected_to be_a_volunteer_url(@be_a_volunteer)
  end

  test "should destroy be_a_volunteer" do
    assert_difference('BeAVolunteer.count', -1) do
      delete be_a_volunteer_url(@be_a_volunteer)
    end

    assert_redirected_to be_a_volunteers_url
  end
end
