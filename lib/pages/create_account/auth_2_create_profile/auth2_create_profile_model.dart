import '/components/edit_profile_auth_2/edit_profile_auth2_widget.dart';
import '/components/logo/logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_create_profile_widget.dart' show Auth2CreateProfileWidget;
import 'package:flutter/material.dart';

class Auth2CreateProfileModel
    extends FlutterFlowModel<Auth2CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logo component.
  late LogoModel logoModel;
  // Model for editProfile_auth_2 component.
  late EditProfileAuth2Model editProfileAuth2Model;

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
    editProfileAuth2Model = createModel(context, () => EditProfileAuth2Model());
  }

  @override
  void dispose() {
    logoModel.dispose();
    editProfileAuth2Model.dispose();
  }
}
