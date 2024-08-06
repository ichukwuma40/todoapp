import '/components/task_card_simple/task_card_simple_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_drag_live_stream_widget.dart' show MainDragLiveStreamWidget;
import 'package:flutter/material.dart';

class MainDragLiveStreamModel
    extends FlutterFlowModel<MainDragLiveStreamWidget> {
  ///  Local state fields for this page.

  bool completedActive = false;

  bool inProgressActive = false;

  ///  State fields for stateful widgets in this page.

  // Models for task_cardSimple dynamic component.
  late FlutterFlowDynamicModels<TaskCardSimpleModel> taskCardSimpleModels1;
  // Models for task_cardSimple dynamic component.
  late FlutterFlowDynamicModels<TaskCardSimpleModel> taskCardSimpleModels2;

  @override
  void initState(BuildContext context) {
    taskCardSimpleModels1 =
        FlutterFlowDynamicModels(() => TaskCardSimpleModel());
    taskCardSimpleModels2 =
        FlutterFlowDynamicModels(() => TaskCardSimpleModel());
  }

  @override
  void dispose() {
    taskCardSimpleModels1.dispose();
    taskCardSimpleModels2.dispose();
  }
}
