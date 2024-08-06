import '/flutter_flow/flutter_flow_util.dart';
import 'task_details_widget.dart' show TaskDetailsWidget;
import 'package:flutter/material.dart';

class TaskDetailsModel extends FlutterFlowModel<TaskDetailsWidget> {
  ///  Local state fields for this page.

  bool showEdit = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for scrolling_Column widget.
  ScrollController? scrollingColumn;
  // State field(s) for Column widget.
  ScrollController? columnController;

  @override
  void initState(BuildContext context) {
    scrollingColumn = ScrollController();
    columnController = ScrollController();
  }

  @override
  void dispose() {
    scrollingColumn?.dispose();
    columnController?.dispose();
  }
}
