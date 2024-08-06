import '/components/task_card/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_tasks_widget.dart' show MainTasksWidget;
import 'package:flutter/material.dart';

class MainTasksModel extends FlutterFlowModel<MainTasksWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Models for task_card dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels1;
  // Models for task_card dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels2;
  // Models for task_card dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels3;
  // Models for task_card dynamic component.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels4;

  @override
  void initState(BuildContext context) {
    taskCardModels1 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels2 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels3 = FlutterFlowDynamicModels(() => TaskCardModel());
    taskCardModels4 = FlutterFlowDynamicModels(() => TaskCardModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    taskCardModels1.dispose();
    taskCardModels2.dispose();
    taskCardModels3.dispose();
    taskCardModels4.dispose();
  }
}
