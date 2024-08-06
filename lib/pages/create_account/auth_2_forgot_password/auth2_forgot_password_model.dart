import '/components/logo/logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_forgot_password_widget.dart' show Auth2ForgotPasswordWidget;
import 'package:flutter/material.dart';

class Auth2ForgotPasswordModel
    extends FlutterFlowModel<Auth2ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logo component.
  late LogoModel logoModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
  }

  @override
  void dispose() {
    logoModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
