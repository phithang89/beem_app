require 'test_helper'

class NgaysControllerTest < ActionController::TestCase
  setup do
    @ngay = ngays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ngays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ngay" do
    assert_difference('Ngay.count') do
      post :create, ngay: { Ghichu: @ngay.Ghichu, Tien: @ngay.Tien, Tong: @ngay.Tong }
    end

    assert_redirected_to ngay_path(assigns(:ngay))
  end

  test "should show ngay" do
    get :show, id: @ngay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ngay
    assert_response :success
  end

  test "should update ngay" do
    put :update, id: @ngay, ngay: { Ghichu: @ngay.Ghichu, Tien: @ngay.Tien, Tong: @ngay.Tong }
    assert_redirected_to ngay_path(assigns(:ngay))
  end

  test "should destroy ngay" do
    assert_difference('Ngay.count', -1) do
      delete :destroy, id: @ngay
    end

    assert_redirected_to ngays_path
  end
end
