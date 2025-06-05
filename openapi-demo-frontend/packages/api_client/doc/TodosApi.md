# api_client.api.TodosApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTodo**](TodosApi.md#createtodo) | **POST** /todos | Create a new todo
[**deleteTodoById**](TodosApi.md#deletetodobyid) | **DELETE** /todos/{id} | Delete a todo by ID
[**getAllTodos**](TodosApi.md#getalltodos) | **GET** /todos | Get all todos
[**getTodoById**](TodosApi.md#gettodobyid) | **GET** /todos/{id} | Get a todo by ID
[**updateTodoById**](TodosApi.md#updatetodobyid) | **PATCH** /todos/{id} | Update a todo by ID


# **createTodo**
> Todo createTodo(createTodoDto)

Create a new todo

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTodosApi();
final CreateTodoDto createTodoDto = ; // CreateTodoDto | 

try {
    final response = api.createTodo(createTodoDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodosApi->createTodo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTodoDto** | [**CreateTodoDto**](CreateTodoDto.md)|  | 

### Return type

[**Todo**](Todo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTodoById**
> deleteTodoById(id)

Delete a todo by ID

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTodosApi();
final num id = 8.14; // num | Todo ID

try {
    api.deleteTodoById(id);
} catch on DioException (e) {
    print('Exception when calling TodosApi->deleteTodoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| Todo ID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTodos**
> BuiltList<Todo> getAllTodos()

Get all todos

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTodosApi();

try {
    final response = api.getAllTodos();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodosApi->getAllTodos: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Todo&gt;**](Todo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTodoById**
> Todo getTodoById(id)

Get a todo by ID

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTodosApi();
final num id = 8.14; // num | Todo ID

try {
    final response = api.getTodoById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodosApi->getTodoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| Todo ID | 

### Return type

[**Todo**](Todo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTodoById**
> Todo updateTodoById(id, updateTodoDto)

Update a todo by ID

### Example
```dart
import 'package:api_client/api.dart';

final api = ApiClient().getTodosApi();
final num id = 8.14; // num | Todo ID
final UpdateTodoDto updateTodoDto = ; // UpdateTodoDto | 

try {
    final response = api.updateTodoById(id, updateTodoDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TodosApi->updateTodoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| Todo ID | 
 **updateTodoDto** | [**UpdateTodoDto**](UpdateTodoDto.md)|  | 

### Return type

[**Todo**](Todo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

