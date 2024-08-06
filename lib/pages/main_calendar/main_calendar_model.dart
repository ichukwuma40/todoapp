import '/flutter_flow/flutter_flow_util.dart';
import 'main_calendar_widget.dart' show MainCalendarWidget;
import 'package:flutter/material.dart';

class MainCalendarModel extends FlutterFlowModel<MainCalendarWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  bool createTask = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
