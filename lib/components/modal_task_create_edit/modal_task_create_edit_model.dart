import '/components/task_creation_form/task_creation_form_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_task_create_edit_widget.dart' show ModalTaskCreateEditWidget;
import 'package:flutter/material.dart';

class ModalTaskCreateEditModel
    extends FlutterFlowModel<ModalTaskCreateEditWidget> {
  ///  State fields for stateful widgets in this component.

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
