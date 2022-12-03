import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:invoice1/api/pdf_api.dart';
// import 'package:invoice1/api/pdf_invoice_api.dart';
// import 'package:invoice1/main.dart';
// import 'package:invoice1/model/customer.dart';
// import 'package:invoice1/model/invoice.dart';
// import 'package:invoice1/model/my_invoice.dart';
// import 'package:invoice1/model/supplier.dart';
// import 'package:invoice1/widget/button_widget.dart';
// import 'package:invoice1/widget/title_widget.dart';
import 'package:http/http.dart' as http;

import '../../../main.dart';
import '../api/pdf_api.dart';
import '../api/pdf_invoice_api.dart';
import '../model/customer.dart';
import '../model/invoice.dart';
import '../model/my_invoice.dart';
import '../model/supplier.dart';
import '../widget/button_widget.dart';
import '../widget/title_widget.dart';

class PdfPage extends StatefulWidget {
  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  static String Id = ''.toString();
  var prefs = GetStorage();
  Future<Result2>? list;
  @override
  void initState() {
    super.initState();
    list = _getData();
  }

  Future<Result2> _getData() async {
    var prefs = GetStorage();
    //saved id..........
    //prefs.write("Id".toString(), json.decode(r.body)['Id']);
    Id = prefs.read("Id").toString();
    print('&&&&&&&&&&&&&&&&&&&&&&:${Id}');
    String url = 'https://api.gyros.farm/api/Order/Invoice/$Id';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      var myData = Result2.fromJson(data['result']);
      print('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&: ${myData.id.toString()}');
      return myData;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            MyApp.title,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitleWidget(
                icon: Icons.picture_as_pdf,
                text: 'Generate Invoice',
              ),
              const SizedBox(height: 48),
              FutureBuilder<Result2>(
                  future: _getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      var items = snapshot.data;
                      return ButtonWidget(
                        text: 'Invoice PDF',
                        onClicked: () async {
                          final date = DateTime.now();
                          final dueDate = date.add(Duration(days: 7));

                          final invoice = Invoice(
                            supplier: Supplier(
                              name: 'Name: ${items!.name.toString()}',
                              email: 'Email: ${items.email}',
                              address: 'Address: ${items.address}',
                              mobile: 'Mobile no: ${items.mobile}',
                              pin: 'Pin: ${items.pinCode}',
                              returnPolicy:
                                  'If the item is defective or not as described,you may return it during delivery directly or you may request for'
                                  'return within 10 days of delivery for items that are defective or are different from what you ordered.'
                                  ' items must be complete, free from damages and for items returned for being different from what you '
                                  'ordred, they must be unopened as well.',
                              office:
                                  'Gyros private limited,2nd floor,plot No. 82,Noida,UttarPradesh',
                            ),
                            customer: Customer(
                                order: 'OrderId: ${items.id.toString()}',
                                invoiceNumber:
                                    'Invoice number: ${items.userId.toString()}',
                                paymentMethod:
                                    'Payment method: ${items.paymentMode}',
                                totalItems:
                                    'Total items: ${items.totalItem.toString()}'
                                /* name: 'Apple Inc.',
                             address: 'Apple Street, Cupertino, CA 95014',*/
                                ),
                            info: InvoiceInfo(
                              orderDate: items.date,
                              invoiceDate: items.date,
                              orderStatus: items.orderStatus.toString(),
                              paymentStatus: items.paymentStatus.toString(),
                            ),
                            items: [
                              InvoiceItem(
                                description: items.productName,
                                // date: DateTime.now(),
                                quantity: 8,
                                vat: 0.19,
                                unitPrice: items.price.toDouble(),
                              ),
                              InvoiceItem(
                                description: 'Mango',
                                // date: DateTime.now(),
                                quantity: 3,
                                vat: 0.19,
                                unitPrice: 2.99.toDouble(),
                              ),
                              InvoiceItem(
                                description: 'Onion',
                                // date: DateTime.now(),
                                quantity: 8,
                                vat: 0.19,
                                unitPrice: 3.99.toDouble(),
                              ),
                              InvoiceItem(
                                description: 'Carrot',
                                // date: DateTime.now(),
                                quantity: 1,
                                vat: 0.19,
                                unitPrice: 1.59.toDouble(),
                              ),
                              InvoiceItem(
                                description: 'Papaya',
                                //date: DateTime.now(),
                                quantity: 5,
                                vat: 0.19,
                                unitPrice: 0.99.toDouble(),
                              ),
                              InvoiceItem(
                                description: 'Pumpkin',
                                //date: DateTime.now(),
                                quantity: 4,
                                vat: 0.19,
                                unitPrice: 1.29.toDouble(),
                              ),
                            ],
                          );

                          final pdfFile = await PdfInvoiceApi.generate(invoice);

                          PdfApi.openFile(pdfFile);
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text(
                        "${snapshot.error}",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                        ),
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  })
            ],
          )),
        ),
      );
}
