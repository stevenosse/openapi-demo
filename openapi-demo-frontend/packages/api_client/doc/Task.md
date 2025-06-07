# api_client.model.Task

## Load the model package
```dart
import 'package:api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **num** | The unique identifier of the task | 
**title** | **String** | The title of the task | 
**description** | **String** | The description of the task | [optional] 
**completed** | **bool** | Whether the task is completed | [default to false]
**order** | **num** | The order/position of the task within the todo | [default to 0]
**todoId** | **num** | The ID of the todo this task belongs to | 
**todo** | [**Todo**](Todo.md) | The todo this task belongs to | 
**createdAt** | [**DateTime**](DateTime.md) | The creation date of the task | 
**updatedAt** | [**DateTime**](DateTime.md) | The last update date of the task | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


