import '/component/button/button_widget.dart';
import '/component/page_main_heading/page_main_heading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'welcome_page_widget.dart' show WelcomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomePageModel extends FlutterFlowModel<WelcomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for pageMainHeading component.
  late PageMainHeadingModel pageMainHeadingModel;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Model for Button component.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    pageMainHeadingModel = createModel(context, () => PageMainHeadingModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    pageMainHeadingModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
