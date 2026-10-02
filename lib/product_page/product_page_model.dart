import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/product_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'product_page_widget.dart' show ProductPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductPageModel extends FlutterFlowModel<ProductPageWidget> {
  ///  Local state fields for this page.

  DocumentReference? cartdata;

  ///  State fields for stateful widgets in this page.

  // Models for productList dynamic component.
  late FlutterFlowDynamicModels<ProductListModel> productListModels;
  // Stores action output result for [Firestore Query - Query a collection] action in productList widget.
  CartsRecord? cartDetails;
  // Stores action output result for [Backend Call - Create Document] action in productList widget.
  CartsRecord? cartoutCreateNew;

  @override
  void initState(BuildContext context) {
    productListModels = FlutterFlowDynamicModels(() => ProductListModel());
  }

  @override
  void dispose() {
    productListModels.dispose();
  }
}
