import '/auth/firebase_auth/auth_util.dart';
import '/component/button/button_widget.dart';
import '/component/email_textfield_componet/email_textfield_componet_widget.dart';
import '/component/page_main_heading/page_main_heading_widget.dart';
import '/component/password_texfield_componet/password_texfield_componet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'sign_in_page_widget.dart' show SignInPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInPageModel extends FlutterFlowModel<SignInPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for pageMainHeading component.
  late PageMainHeadingModel pageMainHeadingModel;
  // Model for emailTextfieldComponet component.
  late EmailTextfieldComponetModel emailTextfieldComponetModel;
  // Model for Password.
  late PasswordTexfieldComponetModel passwordModel;
  // Model for Button component.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    pageMainHeadingModel = createModel(context, () => PageMainHeadingModel());
    emailTextfieldComponetModel =
        createModel(context, () => EmailTextfieldComponetModel());
    passwordModel = createModel(context, () => PasswordTexfieldComponetModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    pageMainHeadingModel.dispose();
    emailTextfieldComponetModel.dispose();
    passwordModel.dispose();
    buttonModel.dispose();
  }
}
