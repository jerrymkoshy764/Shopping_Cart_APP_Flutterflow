import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartsRecord extends FirestoreRecord {
  CartsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cartCount" field.
  int? _cartCount;
  int get cartCount => _cartCount ?? 0;
  bool hasCartCount() => _cartCount != null;

  // "product" field.
  DocumentReference? _product;
  DocumentReference? get product => _product;
  bool hasProduct() => _product != null;

  // "productData" field.
  ProductStruct? _productData;
  ProductStruct get productData => _productData ?? ProductStruct();
  bool hasProductData() => _productData != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _cartCount = castToType<int>(snapshotData['cartCount']);
    _product = snapshotData['product'] as DocumentReference?;
    _productData = snapshotData['productData'] is ProductStruct
        ? snapshotData['productData']
        : ProductStruct.maybeFromMap(snapshotData['productData']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Carts')
          : FirebaseFirestore.instance.collectionGroup('Carts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Carts').doc(id);

  static Stream<CartsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartsRecord.fromSnapshot(s));

  static Future<CartsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartsRecord.fromSnapshot(s));

  static CartsRecord fromSnapshot(DocumentSnapshot snapshot) => CartsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartsRecordData({
  int? cartCount,
  DocumentReference? product,
  ProductStruct? productData,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cartCount': cartCount,
      'product': product,
      'productData': ProductStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "productData" field.
  addProductStructData(firestoreData, productData, 'productData');

  return firestoreData;
}

class CartsRecordDocumentEquality implements Equality<CartsRecord> {
  const CartsRecordDocumentEquality();

  @override
  bool equals(CartsRecord? e1, CartsRecord? e2) {
    return e1?.cartCount == e2?.cartCount &&
        e1?.product == e2?.product &&
        e1?.productData == e2?.productData;
  }

  @override
  int hash(CartsRecord? e) =>
      const ListEquality().hash([e?.cartCount, e?.product, e?.productData]);

  @override
  bool isValidKey(Object? o) => o is CartsRecord;
}
