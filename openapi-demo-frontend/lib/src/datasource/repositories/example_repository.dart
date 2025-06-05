import 'package:openapi_demo_frontend/src/datasource/http/dio_config.dart';
import 'package:openapi_demo_frontend/src/datasource/http/example_api.dart';
import 'package:openapi_demo_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:openapi_demo_frontend/src/datasource/repositories/base_repository.dart';
import 'package:openapi_demo_frontend/src/shared/locator.dart';

class ExampleRepository extends BaseRepository {
  final ExampleApi exampleApi;

  ExampleRepository({
    ExampleApi? exampleApi,
  }) : exampleApi = exampleApi ?? ExampleApi(dio: locator<DioConfig>().dio);

  Future<ApiResponse<String, ApiError>> getExample() async {
    return runApiCall(
      call: () async {
        final response = await exampleApi.getExample();
        return ApiResponse.success(response);
      },
    );
  }
}
