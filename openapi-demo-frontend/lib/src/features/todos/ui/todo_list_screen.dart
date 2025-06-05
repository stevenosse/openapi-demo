import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:openapi_demo_frontend/src/core/theme/dimens.dart';
import 'package:openapi_demo_frontend/src/features/todos/logic/todo_controller.dart';
import 'package:openapi_demo_frontend/src/features/todos/ui/widgets/todo_item.dart';
import 'package:openapi_demo_frontend/src/shared/components/business/listenable_consumer.dart';
import 'package:openapi_demo_frontend/src/shared/components/dialogs/loading_dialog.dart';
import 'package:openapi_demo_frontend/src/shared/extensions/context_extensions.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

@RoutePage()
class TodoListScreen extends StatefulWidget implements AutoRouteWrapper {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TodoController(),
      child: this,
    );
  }
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TodoController>().loadTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TodoController>(context, listen: false);
    
    return ListenableConsumer<TodoController>(
      listenable: controller,
      listener: (context, controller) {
        controller.showErrorIfExists(context);
        
        if (controller.isLoading) {
          LoadingDialog.show(context: context);
        } else {
          LoadingDialog.hide(context: context);
        }
      },
      builder: (context, controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Todos',
              style: context.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: context.colorScheme.surface,
            foregroundColor: context.colorScheme.onSurface,
          ),
          body: _buildBody(context, controller),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _showCreateTodoDialog(context, controller),
            child: const Icon(IconsaxPlusLinear.add),
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, TodoController controller) {
    final todos = controller.todos;
    
    if (todos == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    
    if (todos.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              IconsaxPlusLinear.note,
              size: 64,
              color: context.colorScheme.onSurface.withValues(alpha: 0.3),
            ),
            const SizedBox(height: Dimens.spacing),
            Text(
              'No todos yet',
              style: context.textTheme.titleLarge?.copyWith(
                color: context.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: Dimens.halfSpacing),
            Text(
              'Tap the + button to create your first todo',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }
    
    return RefreshIndicator(
      onRefresh: () => controller.loadTodos(),
      child: ListView.builder(
        padding: const EdgeInsets.all(Dimens.spacing),
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos.elementAt(index);
          return TodoItem(
            todo: todo,
            onToggleComplete: () => controller.toggleTodoCompletion(todo),
            onDelete: () => _showDeleteConfirmation(context, controller, todo),
          );
        },
      ),
    );
  }

  void _showCreateTodoDialog(BuildContext context, TodoController controller) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    String selectedPriority = 'medium';
    
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: const Text('Create Todo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                ),
                autofocus: true,
              ),
              const SizedBox(height: Dimens.spacing),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description (optional)',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: Dimens.spacing),
              DropdownButtonFormField<String>(
                value: selectedPriority,
                decoration: const InputDecoration(
                  labelText: 'Priority',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'low', child: Text('Low')),
                  DropdownMenuItem(value: 'medium', child: Text('Medium')),
                  DropdownMenuItem(value: 'high', child: Text('High')),
                ],
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      selectedPriority = value;
                    });
                  }
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (titleController.text.trim().isEmpty) {
                  return;
                }
                
                final success = await controller.createTodo(
                  titleController.text.trim(),
                  descriptionController.text.trim().isEmpty 
                      ? null 
                      : descriptionController.text.trim(),
                  selectedPriority,
                );
                
                if (success && context.mounted) {
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, TodoController controller, todo) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Todo'),
        content: Text('Are you sure you want to delete "${todo.title}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              final success = await controller.deleteTodo(todo);
              if (success && context.mounted) {
                Navigator.of(context).pop();
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: context.colorScheme.error,
              foregroundColor: context.colorScheme.onError,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}