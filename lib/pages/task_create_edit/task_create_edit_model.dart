import '/components/task_creation_form/task_creation_form_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'task_create_edit_widget.dart' show TaskCreateEditWidget;
import 'package:flutter/material.dart';

class TaskCreateEditModel extends FlutterFlowModel<TaskCreateEditWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for task_CreationForm component.
  late TaskCreationFormModel taskCreationFormModel;

  @override
  void initState(BuildContext context) {
    taskCreationFormModel = createModel(context, () => TaskCreationFormModel());
  }

  @override
  void dispose() {
    taskCreationFormModel.dispose();
  }
}
