# api_client.api.TasksApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTask**](TasksApi.md#createtask) | **POST** /todos/{todoId}/tasks | Create a new task for a todo
[**deleteTaskById**](TasksApi.md#deletetaskbyid) | **DELETE** /todos/{todoId}/tasks/{id} | Delete a task by ID
[**getAllTasksForTodo**](TasksApi.md#getalltasksfortodo) | **GET** /todos/{todoId}/tasks | Get all tasks for a todo
[**getTaskById**](TasksApi.md#gettaskbyid) | **GET** /todos/{todoId}/tasks/{id} | Get a task by ID
[**updateTaskById**](TasksApi.md#updatetaskbyid) | **PATCH** /todos/{todoId}/tasks/{id} | Update a task by ID


# **createTask**
> Task createTask(todoId, createTaskDto)

Create a new task for a todo

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTasksApi();
final num todoId = 8.14; // num | Todo ID
final CreateTaskDto createTaskDto = ; // CreateTaskDto | 

try {
    final response = api.createTask(todoId, createTaskDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksApi->createTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todoId** | **num**| Todo ID | 
 **createTaskDto** | [**CreateTaskDto**](CreateTaskDto.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTaskById**
> deleteTaskById(todoId, id)

Delete a task by ID

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTasksApi();
final num todoId = 8.14; // num | Todo ID
final num id = 8.14; // num | Task ID

try {
    api.deleteTaskById(todoId, id);
} catch on DioException (e) {
    print('Exception when calling TasksApi->deleteTaskById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todoId** | **num**| Todo ID | 
 **id** | **num**| Task ID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTasksForTodo**
> BuiltList<Task> getAllTasksForTodo(todoId)

Get all tasks for a todo

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTasksApi();
final num todoId = 8.14; // num | Todo ID

try {
    final response = api.getAllTasksForTodo(todoId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksApi->getAllTasksForTodo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todoId** | **num**| Todo ID | 

### Return type

[**BuiltList&lt;Task&gt;**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTaskById**
> Task getTaskById(todoId, id)

Get a task by ID

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTasksApi();
final num todoId = 8.14; // num | Todo ID
final num id = 8.14; // num | Task ID

try {
    final response = api.getTaskById(todoId, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksApi->getTaskById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todoId** | **num**| Todo ID | 
 **id** | **num**| Task ID | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTaskById**
> Task updateTaskById(todoId, id, updateTaskDto)

Update a task by ID

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTasksApi();
final num todoId = 8.14; // num | Todo ID
final num id = 8.14; // num | Task ID
final UpdateTaskDto updateTaskDto = ; // UpdateTaskDto | 

try {
    final response = api.updateTaskById(todoId, id, updateTaskDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TasksApi->updateTaskById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **todoId** | **num**| Todo ID | 
 **id** | **num**| Task ID | 
 **updateTaskDto** | [**UpdateTaskDto**](UpdateTaskDto.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

