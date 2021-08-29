require "test_helper"

class ScafsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaf = scafs(:one)
  end

  test "should get index" do
    get scafs_url
    assert_response :success
  end

  test "should get new" do
    get new_scaf_url
    assert_response :success
  end

  test "should create scaf" do
    assert_difference('Scaf.count') do
      post scafs_url, params: { scaf: { content: @scaf.content, title: @scaf.title } }
    end

    assert_redirected_to scaf_url(Scaf.last)
  end

  test "should show scaf" do
    get scaf_url(@scaf)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaf_url(@scaf)
    assert_response :success
  end

  test "should update scaf" do
    patch scaf_url(@scaf), params: { scaf: { content: @scaf.content, title: @scaf.title } }
    assert_redirected_to scaf_url(@scaf)
  end

  test "should destroy scaf" do
    assert_difference('Scaf.count', -1) do
      delete scaf_url(@scaf)
    end

    assert_redirected_to scafs_url
  end
end
