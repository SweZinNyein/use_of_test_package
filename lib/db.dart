import 'dart:developer';

import 'package:sap_db_lib/sap_db_lib.dart';

void main() async {
  var connection = SLConnection.fromURL('http://192.168.1.252:50001');

  try {
    await connection.login('KGC_UAT', 'pro01', '12345');
    bool isConnected = connection.isConnected;
    print('is connected : $isConnected');

    if (!isConnected) {
      throw 'Not connected!';
    }

    bool isBMF1 = await SAPUtils.isUDTExists('ATO_BMF1');
    log('is BMF1 exists>>$isBMF1');

    bool isBMF1FieldItemCode = await SAPUtils.isUDFExists('ATO_BMF1', 'ItemCode');
    log('isBMF1Field itemCode exists >>> $isBMF1FieldItemCode');

    bool isBMF1FieldQuantityCode = await SAPUtils.isUDFExists('ATO_BMF1', 'Quantity');
    log('isBMF1Field quantity exists >>> $isBMF1FieldQuantityCode');

    bool isBMF1FieldStatusCode = await SAPUtils.isUDFExists('ATO_BMF1', 'Status');
    log('isBMF1Field status exists >>> $isBMF1FieldStatusCode');

    bool isBMF1FieldWhsCodeCode = await SAPUtils.isUDFExists('ATO_BMF1', 'WhsCode');
    log('isBMF1Field WhsCode exists >>> $isBMF1FieldWhsCodeCode');

    bool isBMF2 = await SAPUtils.isUDTExists('ATO_BMF2');
    log('is BMF2 exists>>$isBMF2');
  } catch (e, s) {
    log('catch');
    if (e is SLError) {
      log('error status code : ${e.code}');
      log('error reason : ${e.message}');
    } else if (e is B1Error) {
      log('error status code : ${e.statusCode}');
      log('error code : ${e.code}');
      log('error message : ${e.message}');
    } else {
      log('$e');
      log('$s');
    }
  }
}
