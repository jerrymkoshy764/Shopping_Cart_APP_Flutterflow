import '/auth/firebase_auth/auth_util.dart';
import '/component/button/button_widget.dart';
import '/component/email_textfield_componet/email_textfield_componet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for emailTextfieldComponet component.
  late EmailTextfieldComponetModel emailTextfieldComponetModel;
  // Model for Button component.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    emailTextfieldComponetModel =
        createModel(context, () => EmailTextfieldComponetModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    emailTextfieldComponetModel.dispose();
    buttonModel.dispose();
  }
}
