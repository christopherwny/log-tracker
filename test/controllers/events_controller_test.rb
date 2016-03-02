require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { affectedArea: @event.affectedArea, company: @event.company, company_id: @event.company_id, cost: @event.cost, date: @event.date, deficiency: @event.deficiency, employee_id: @event.employee_id, eventSource: @event.eventSource, issuer: @event.issuer, notes: @event.notes, responsibleParty: @event.responsibleParty, status: @event.status }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { affectedArea: @event.affectedArea, company: @event.company, company_id: @event.company_id, cost: @event.cost, date: @event.date, deficiency: @event.deficiency, employee_id: @event.employee_id, eventSource: @event.eventSource, issuer: @event.issuer, notes: @event.notes, responsibleParty: @event.responsibleParty, status: @event.status }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
