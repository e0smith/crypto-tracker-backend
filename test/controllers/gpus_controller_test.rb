require "test_helper"

class GpusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gpu = gpus(:one)
  end

  test "should get index" do
    get gpus_url, as: :json
    assert_response :success
  end

  test "should create gpu" do
    assert_difference('Gpu.count') do
      post gpus_url, params: { gpu: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show gpu" do
    get gpu_url(@gpu), as: :json
    assert_response :success
  end

  test "should update gpu" do
    patch gpu_url(@gpu), params: { gpu: {  } }, as: :json
    assert_response 200
  end

  test "should destroy gpu" do
    assert_difference('Gpu.count', -1) do
      delete gpu_url(@gpu), as: :json
    end

    assert_response 204
  end
end
