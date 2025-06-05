import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:openapi_demo_frontend/src/core/theme/dimens.dart';
import 'package:openapi_demo_frontend/src/shared/extensions/context_extensions.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final VoidCallback onToggleComplete;
  final VoidCallback onDelete;

  const TodoItem({
    super.key,
    required this.todo,
    required this.onToggleComplete,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: Dimens.spacing),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Dimens.spacing,
          vertical: Dimens.halfSpacing,
        ),
        leading: _buildPriorityIndicator(context),
        title: Text(
          todo.title,
          style: context.textTheme.titleMedium?.copyWith(
            decoration: todo.completed ? TextDecoration.lineThrough : null,
            color: todo.completed
                ? context.colorScheme.onSurface.withValues(alpha: 0.5)
                : context.colorScheme.onSurface,
          ),
        ),
        subtitle: todo.description != null && todo.description!.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(top: Dimens.minSpacing),
                child: Text(
                  todo.description!,
                  style: context.textTheme.bodyMedium?.copyWith(
                    decoration:
                        todo.completed ? TextDecoration.lineThrough : null,
                    color: todo.completed
                        ? context.colorScheme.onSurface.withValues(alpha: 0.4)
                        : context.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              )
            : null,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: todo.completed,
              onChanged: (_) => onToggleComplete(),
              activeColor: context.colorScheme.primary,
            ),
            IconButton(
              icon: const Icon(IconsaxPlusLinear.trash),
              onPressed: onDelete,
              color: context.colorScheme.error,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriorityIndicator(BuildContext context) {
    Color priorityColor;
    IconData priorityIcon;

    switch (todo.priority.name) {
      case 'high':
        priorityColor = Colors.red;
        priorityIcon = IconsaxPlusLinear.arrow_up_1;
        break;
      case 'low':
        priorityColor = Colors.green;
        priorityIcon = IconsaxPlusLinear.arrow_down_1;
        break;
      case 'medium':
      default:
        priorityColor = Colors.orange;
        priorityIcon = IconsaxPlusLinear.arrow_right_1;
        break;
    }

    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: priorityColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        priorityIcon,
        color: priorityColor,
        size: 20,
      ),
    );
  }
}
