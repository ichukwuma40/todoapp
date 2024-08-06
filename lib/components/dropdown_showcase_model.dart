import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown_showcase_widget.dart' show DropdownShowcaseWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DropdownShowcaseModel extends FlutterFlowModel<DropdownShowcaseWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
  }
}
