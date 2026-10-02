import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/cart_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for cartList dynamic component.
  late FlutterFlowDynamicModels<CartListModel> cartListModels;

  @override
  void initState(BuildContext context) {
    cartListModels = FlutterFlowDynamicModels(() => CartListModel());
  }

  @override
  void dispose() {
    cartListModels.dispose();
  }
}
