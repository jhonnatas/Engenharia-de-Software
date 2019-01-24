require 'test_helper'

class DistribuitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribuitor = distribuitors(:one)
  end

  test "should get index" do
    get distribuitors_url
    assert_response :success
  end

  test "should get new" do
    get new_distribuitor_url
    assert_response :success
  end

  test "should create distribuitor" do
    assert_difference('Distribuitor.count') do
      post distribuitors_url, params: { distribuitor: { address: @distribuitor.address, city: @distribuitor.city, cnpj: @distribuitor.cnpj, complement: @distribuitor.complement, contact: @distribuitor.contact, neighborhood: @distribuitor.neighborhood, phone: @distribuitor.phone, rsocial: @distribuitor.rsocial, state: @distribuitor.state, zipcode: @distribuitor.zipcode } }
    end

    assert_redirected_to distribuitor_url(Distribuitor.last)
  end

  test "should show distribuitor" do
    get distribuitor_url(@distribuitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_distribuitor_url(@distribuitor)
    assert_response :success
  end

  test "should update distribuitor" do
    patch distribuitor_url(@distribuitor), params: { distribuitor: { address: @distribuitor.address, city: @distribuitor.city, cnpj: @distribuitor.cnpj, complement: @distribuitor.complement, contact: @distribuitor.contact, neighborhood: @distribuitor.neighborhood, phone: @distribuitor.phone, rsocial: @distribuitor.rsocial, state: @distribuitor.state, zipcode: @distribuitor.zipcode } }
    assert_redirected_to distribuitor_url(@distribuitor)
  end

  test "should destroy distribuitor" do
    assert_difference('Distribuitor.count', -1) do
      delete distribuitor_url(@distribuitor)
    end

    assert_redirected_to distribuitors_url
  end
end
