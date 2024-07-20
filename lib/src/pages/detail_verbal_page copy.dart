import 'dart:convert';
import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:kfa_mobile_nu/constaints.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:ui' as ui;

// ignore: must_be_immutable
class detail_verbal_page extends HookConsumerWidget {
  detail_verbal_page({super.key});

  final GlobalKey _globalKeyScreenShot = GlobalKey();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detail Verbal"),
        backgroundColor: kwhite_new,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 15,
        shadowColor: const Color.fromARGB(255, 34, 34, 35),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: RepaintBoundary(
          key: _globalKeyScreenShot,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.deepOrange,
        elevation: 12,
        onPressed: () async {
          await Printing.layoutPdf(
            onLayout: (format) => _generatePdf(format) as Future<Uint8List>,
            format: PdfPageFormat.a4,
          );
        },
        child: const Icon(Icons.print_outlined),
      ),
    );
  }

  TextStyle Label() {
    return TextStyle(color: kPrimaryColor, fontSize: 12);
  }

  TextStyle Name() {
    return TextStyle(
      color: kImageColor,
      fontSize: 13,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle NameProperty() {
    return TextStyle(
      color: kImageColor,
      fontSize: 11,
      fontWeight: FontWeight.bold,
    );
  }

  var formatter = NumberFormat("##,###,###,###", "en_US");
  Future<Uint8List> _generatePdf(PdfPageFormat format) async {
    // Create a new PDF document
    final pdf = pw.Document(version: PdfVersion.pdf_1_4, compress: true);
    final font = await PdfGoogleFonts.robotoSlabBlack();
    final font1 = await PdfGoogleFonts.tinosRegular();
    final ByteData bytes =
        await rootBundle.load('assets/images/New_KFA_Logo_pdf.png');
    final Uint8List bytes1 =
        (await NetworkAssetBundle(Uri.parse('')).load('')).buffer.asUint8List();
    Uint8List? bytes2;
    // if (image_i != null || image_i != "No") {
    //   bytes2 = base64Decode(image_i);
    //   // (await NetworkAssetBundle(Uri.parse('$image_i')).load('$image_i'))
    //   //     .buffer
    //   //     .asUint8();
    // }

    final pageTheme = await _myPageTheme(format);
    // Add a page to the PDF document
    pdf.addPage(
      pw.MultiPage(
        pageTheme: pageTheme,
        build: (context) {
          return [
            pw.Column(
              children: [
                pw.Column(
                  children: [
                    pw.Container(
                      height: 70,
                      margin: pw.EdgeInsets.only(bottom: 5),
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Container(
                            width: 75,
                            height: 50,
                            child: pw.Image(
                              pw.MemoryImage(
                                bytes1,
                                // bytes1,
                              ),
                              fit: pw.BoxFit.fill,
                            ),
                          ),
                          pw.Text(
                            "VERBAL CHECK",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 12,
                              font: font,
                            ),
                          ),
                          pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.center,
                            children: [
                              pw.Column(
                                children: [
                                  pw.Container(
                                    height: 50,
                                    width: 79,
                                    child: pw.BarcodeWidget(
                                      barcode: pw.Barcode.qrCode(),
                                      data: "",
                                    ),
                                  ),
                                  pw.Text(
                                    'verifications PDF',
                                    style:
                                        pw.TextStyle(fontSize: 7, font: font1),
                                  )
                                ],
                              ),
                              pw.Column(
                                children: [
                                  pw.Container(
                                    height: 50,
                                    width: 79,
                                    child: pw.BarcodeWidget(
                                      barcode: pw.Barcode.qrCode(),
                                      data: "",
                                    ),
                                  ),
                                  pw.Text(
                                    'location map',
                                    style:
                                        pw.TextStyle(fontSize: 7, font: font1),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    pw.Container(
                      child: pw.Column(
                        children: [
                          pw.Column(
                            children: [
                              pw.Container(
                                child: pw.Row(
                                  children: [
                                    pw.Expanded(
                                      flex: 4,
                                      child: pw.Container(
                                        padding: pw.EdgeInsets.all(2),
                                        alignment: pw.Alignment.centerLeft,
                                        decoration: pw.BoxDecoration(
                                            border: pw.Border.all()),
                                        //color: Colors.red,
                                        child: pw.Text(
                                          "DATE: ",
                                          style: pw.TextStyle(
                                            fontSize: 11,
                                            font: font1,
                                            fontWeight: pw.FontWeight.bold,
                                          ),
                                        ),
                                        height: 20,
                                        //color: Colors.white,
                                      ),
                                    ),
                                    pw.Expanded(
                                      flex: 4,
                                      child: pw.Container(
                                        padding: pw.EdgeInsets.all(2),
                                        alignment: pw.Alignment.centerLeft,
                                        decoration: pw.BoxDecoration(
                                            border: pw.Border.all()),
                                        child: pw.Text(
                                          "CODE: ",
                                          style: pw.TextStyle(
                                            fontSize: 11,
                                            fontWeight: pw.FontWeight.bold,
                                            font: font1,
                                          ),
                                        ),
                                        height: 20,
                                        //color: Colors.yellow,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Row(
                        children: [
                          pw.Expanded(
                            flex: 11,
                            child: pw.Container(
                              padding: pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.Container(
                      padding: pw.EdgeInsets.all(2),
                      alignment: pw.Alignment.centerLeft,
                      decoration: pw.BoxDecoration(border: pw.Border.all()),
                      child: pw.Text(
                        "",
                        overflow: pw.TextOverflow.clip,
                        style: pw.TextStyle(font: font1, fontSize: 11),
                      ),
                      height: 34,
                      //color: Colors.blue,
                    ),
                    pw.SizedBox(
                      child: pw.Row(
                        children: [
                          pw.Expanded(
                            flex: 2,
                            child: pw.Container(
                              padding: pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "Property Information: ",
                                style: pw.TextStyle(
                                  fontSize: 11,
                                  font: font1,
                                ),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                          pw.Expanded(
                            flex: 6,
                            child: pw.Container(
                              padding: pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Row(
                        children: [
                          pw.Expanded(
                            flex: 2,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "Address : ",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                          pw.Expanded(
                            flex: 6,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                " ",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Row(
                        children: [
                          pw.Expanded(
                            flex: 2,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "Owner Name ",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child:
                                  // name rest with api
                                  pw.Text(
                                "",
                                style: pw.TextStyle(
                                  fontSize: 11,
                                  font: font1,
                                ),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              // name rest with api
                              child: pw.Text(
                                "Contact No : ",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Row(
                        children: [
                          pw.Expanded(
                            flex: 2,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "Bank Officer ",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 30,
                              //color: Colors.blue,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 30,
                              //color: Colors.blue,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "Contact No : ",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 30,
                              //color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      child: pw.Row(
                        children: [
                          pw.Expanded(
                            flex: 2,
                            child: pw.Container(
                              padding: const pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.center,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "Latitude: ",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                          pw.Expanded(
                            flex: 2,
                            child: pw.Container(
                              padding: pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.center,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                "Longtitude: ",
                                style: pw.TextStyle(fontSize: 11, font: font1),
                              ),
                              height: 20,
                              //color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 5),
                    pw.Text(
                      "ESTIMATED VALUE OF THE VERBAL CHECK PROPERTY",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(fontSize: 11, font: font1),
                    ),
                    pw.SizedBox(height: 5),
                    // if (image_i != null || image_i != "No")
                    pw.Container(
                      height: 110,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Container(
                            width: 240,
                            child: pw.Image(
                              pw.MemoryImage(
                                // bytes1,
                                Uint8List.fromList([]),
                              ),
                              fit: pw.BoxFit.fitWidth,
                            ),
                          ),
                          pw.SizedBox(width: 0.1),
                          pw.Container(
                            width: 240,
                            child: pw.Image(
                              pw.MemoryImage(
                                // bytes2!,
                                Uint8List.fromList([]),
                              ),
                              fit: pw.BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // if (image_i == null || image_i == "No")
                    pw.Container(
                      width: 240,
                      height: 110,
                      alignment: pw.Alignment.center,
                      child: pw.Image(
                        pw.MemoryImage(
                          //bytes1,
                          Uint8List.fromList([]),
                        ),
                        fit: pw.BoxFit.fitWidth,
                      ),
                    ),
                    pw.SizedBox(height: 5),
                    pw.Container(
                      child: pw.Column(
                        children: [
                          pw.Container(
                            child: pw.Row(
                              children: [
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Container(
                                    padding: const pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.center,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "DESCRIPTION ",
                                      style: pw.TextStyle(
                                        fontSize: 11,
                                        fontWeight: pw.FontWeight.bold,
                                        font: font1,
                                      ),
                                    ),
                                    height: 20,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: const pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.center,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "AREA/sqm ",
                                      style: pw.TextStyle(
                                        fontSize: 11,
                                        fontWeight: pw.FontWeight.bold,
                                        font: font1,
                                      ),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: const pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.center,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "MIN/sqm ",
                                      style: pw.TextStyle(
                                        fontSize: 11,
                                        fontWeight: pw.FontWeight.bold,
                                        font: font1,
                                      ),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: const pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.center,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "MAX/sqm ",
                                      style: pw.TextStyle(
                                        fontSize: 11,
                                        fontWeight: pw.FontWeight.bold,
                                        font: font1,
                                      ),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: const pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.center,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "MIN-VALUE ",
                                      style: pw.TextStyle(
                                        fontSize: 11,
                                        fontWeight: pw.FontWeight.bold,
                                        font: font1,
                                      ),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: const pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.center,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "MAX-VALUE ",
                                      style: pw.TextStyle(
                                        fontSize: 11,
                                        fontWeight: pw.FontWeight.bold,
                                        font: font1,
                                      ),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // if (.isNotEmpty)
                          // for (int index = .length - 1;
                          //     index >= 0;
                          //     index--)
                          pw.Row(
                            children: [
                              pw.Expanded(
                                flex: 3,
                                child: pw.Container(
                                  padding: pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.centerLeft,
                                  decoration:
                                      pw.BoxDecoration(border: pw.Border.all()),
                                  child: pw.Text(
                                    "Description",
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      fontWeight: pw.FontWeight.bold,
                                      font: font1,
                                    ),
                                  ),
                                  height: 20,
                                  //color: Colors.blue,
                                ),
                              ),
                              pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                  padding: pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.centerLeft,
                                  decoration:
                                      pw.BoxDecoration(border: pw.Border.all()),
                                  child: pw.Text(
                                    '',
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      fontWeight: pw.FontWeight.bold,
                                      font: font1,
                                    ),
                                  ),
                                  height: 20,
                                  //color: Colors.blue,
                                ),
                              ),
                              pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                  padding: pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.centerLeft,
                                  decoration:
                                      pw.BoxDecoration(border: pw.Border.all()),
                                  child: pw.Text(
                                    '',
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      fontWeight: pw.FontWeight.bold,
                                      font: font1,
                                    ),
                                  ),
                                  height: 20,
                                  //color: Colors.blue,
                                ),
                              ),
                              pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                  padding: pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.centerLeft,
                                  decoration:
                                      pw.BoxDecoration(border: pw.Border.all()),
                                  child: pw.Text(
                                    'USD ',
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      font: font1,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                  height: 20,
                                  //color: Colors.blue,
                                ),
                              ),
                              pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                  padding: pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.centerLeft,
                                  decoration:
                                      pw.BoxDecoration(border: pw.Border.all()),
                                  child: pw.Text(
                                    'USD ',
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      fontWeight: pw.FontWeight.bold,
                                      font: font1,
                                    ),
                                  ),
                                  height: 20,
                                  //color: Colors.blue,
                                ),
                              ),
                              pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                  padding: pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.centerLeft,
                                  decoration:
                                      pw.BoxDecoration(border: pw.Border.all()),
                                  child: pw.Text(
                                    'USD ',
                                    style: pw.TextStyle(
                                      fontSize: 10,
                                      fontWeight: pw.FontWeight.bold,
                                      font: font1,
                                    ),
                                  ),
                                  height: 20,
                                  //color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          pw.Container(
                            child: pw.Row(
                              children: [
                                pw.Expanded(
                                  flex: 9,
                                  child: pw.Container(
                                    padding: pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.centerRight,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "Property Value(Estimate) ",
                                      style: pw.TextStyle(
                                        fontSize: 10,
                                        font: font1,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.centerLeft,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      'USD ',
                                      style: pw.TextStyle(
                                          fontSize: 10, font: font1),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.centerLeft,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      'USD ',
                                      style: pw.TextStyle(
                                          fontSize: 10, font: font1),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Container(
                            child: pw.Row(
                              children: [
                                pw.Expanded(
                                  flex: 9,
                                  child: pw.Container(
                                    padding: pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.centerLeft,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    // ទាយយក forceSale from  ForceSaleAndValuation
                                    child: pw.Text(
                                      "Force Sale Value ",
                                      style: pw.TextStyle(
                                        fontSize: 10,
                                        font: font1,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.centerLeft,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "USD ",
                                      style: pw.TextStyle(
                                          fontSize: 10, font: font1),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    padding: pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.centerLeft,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      '',
                                      style: pw.TextStyle(
                                          fontSize: 10, font: font1),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //  ដកចេញសិន
                          // pw.Container(
                          //   child: pw.Row(children: [
                          //     pw.Expanded(
                          //       flex: 5,
                          //       child: pw.Container(
                          //         padding: const pw.EdgeInsets.all(2),
                          //         alignment: pw.Alignment.centerLeft,
                          //         decoration: pw.BoxDecoration(border: pw.Border.all()),
                          //         child: pw.Text("Force Sale Value: ",
                          //             style: pw.TextStyle(
                          //               fontSize: 11,
                          //               font: font1,
                          //               fontWeight: pw.FontWeight.bold,
                          //             )),
                          //         height: 20,
                          //         //color: Colors.blue,
                          //       ),
                          //     ),
                          //     pw.Expanded(
                          //       flex: 2,
                          //       child: pw.Container(
                          //         padding: const pw.EdgeInsets.all(2),
                          //         alignment: pw.Alignment.centerLeft,
                          //         decoration: pw.BoxDecoration(border: pw.Border.all()),
                          //         child: pw.Text("${fn ?? '0.00'}",
                          //             style: pw.TextStyle(fontSize: 11, font: font1)),
                          //         height: 20,
                          //         //color: Colors.blue,
                          //       ),
                          //     ),
                          //     pw.Expanded(
                          //       flex: 2,
                          //       child: pw.Container(
                          //         padding: const pw.EdgeInsets.all(2),
                          //         alignment: pw.Alignment.centerLeft,
                          //         decoration: pw.BoxDecoration(border: pw.Border.all()),
                          //         child: pw.Text("${fx ?? '0.00'}",
                          //             style: pw.TextStyle(fontSize: 11, font: font1)),
                          //         height: 20,
                          //         //color: Colors.blue,
                          //       ),
                          //     ),
                          //     pw.Expanded(
                          //       flex: 4,
                          //       child: pw.Container(
                          //         padding: pw.EdgeInsets.all(2),
                          //         alignment: pw.Alignment.centerLeft,
                          //         decoration: pw.BoxDecoration(border: pw.Border.all()),
                          //         height: 20,
                          //         //color: Colors.blue,
                          //       ),
                          //     ),
                          //   ]),
                          // ),
                          pw.Container(
                            child: pw.Row(
                              children: [
                                pw.Expanded(
                                  flex: 11,
                                  child: pw.Container(
                                    padding: pw.EdgeInsets.all(2),
                                    alignment: pw.Alignment.centerLeft,
                                    decoration: pw.BoxDecoration(
                                        border: pw.Border.all()),
                                    child: pw.Text(
                                      "COMMENT: ",
                                      style: pw.TextStyle(
                                        fontSize: 10,
                                        fontWeight: pw.FontWeight.bold,
                                        font: font1,
                                      ),
                                    ),
                                    height: 20,
                                    //color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Container(
                            padding: pw.EdgeInsets.all(2),
                            alignment: pw.Alignment.centerLeft,
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
                            child: pw.Text(
                              "Valuation fee : ",
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                                font: font1,
                              ),
                            ),
                            height: 20,
                            //color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 5),
                    pw.Text(
                      '*Note: It is only first price which you took from this verbal check data. The accurate value of property when we have the actual site property inspection.We are not responsible for this case when you provided the wrong  and building size or any fraud.',
                      style: pw.TextStyle(fontSize: 6, font: font1),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.end,
                      children: [
                        pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.end,
                          crossAxisAlignment: pw.CrossAxisAlignment.center,
                          children: [
                            pw.Text(
                              'Verbal Check Replied By:${toString()} ',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 7,
                                font: font1,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                            pw.SizedBox(height: 4),
                            pw.Text(
                              ' {toString()}',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                font: font1,
                                fontSize: 11,
                              ),
                              textAlign: pw.TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Text(
                          'KHMER FOUNDATION APPRAISALS Co.,Ltd',
                          style: pw.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 11,
                            font: font1,
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 5),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(
                          flex: 1,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                'Hotline: 099 283 388',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 7,
                                  font: font1,
                                ),
                              ),
                              pw.Row(
                                children: [
                                  pw.Text(
                                    'H/P : (+855)23 988 855/(+855)23 999 761',
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 7,
                                      font: font1,
                                    ),
                                  ),
                                ],
                              ),
                              pw.Row(
                                children: [
                                  pw.Text(
                                    'Email : info@kfa.com.kh',
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 7,
                                      font: font1,
                                    ),
                                  ),
                                ],
                              ),
                              pw.Row(
                                children: [
                                  pw.Text(
                                    'Website: www.kfa.com.kh',
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 7,
                                      font: font1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        pw.SizedBox(width: 10),
                        pw.Expanded(
                          flex: 2,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                'Villa #36A, Street No4, (Borey Peng Hout The Star',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 7,
                                  font: font1,
                                ),
                              ),
                              pw.Text(
                                'Natural 371) Sangkat Chak Angrae Leu,',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 7,
                                  font: font1,
                                ),
                              ),
                              pw.Text(
                                'Khan Mean Chey, Phnom Penh City, Cambodia,',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 7,
                                  font: font1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ];
        },
      ),
    );

    // Get the bytes of the PDF document
    //final pdfBytes = pdf.save();

    // Get the temporary directory
    final output = await getTemporaryDirectory();
    final file = File("${output.path}/Verbalform.pdf");

    // Save the PDF file
    await file.writeAsBytes(await pdf.save());
    print('PDF saved to ${file.path}');

    // Share the PDF file
    // ignore: deprecated_member_use
    // await Share.shareFiles([file.path], text: 'Check out this PDF file!');
    return await pdf.save() as Uint8List;
  }
}

var formatter1 = NumberFormat("###.#####", "en_US");

Future<pw.PageTheme> _myPageTheme(PdfPageFormat format) async {
  final bgShape = await rootBundle.loadString('assets/images/Letter En-Kh.svg');

  format = format.applyMargin(
    left: 2.0 * PdfPageFormat.cm,
    top: 1.0 * PdfPageFormat.cm,
    right: 2.0 * PdfPageFormat.cm,
    bottom: 1.0 * PdfPageFormat.cm,
  );
  return pw.PageTheme(
    pageFormat: format,
    // theme: pw.ThemeData.withFont(
    //   base: await PdfGoogleFonts.openSansRegular(),
    //   bold: await PdfGoogleFonts.openSansBold(),
    //   icons: await PdfGoogleFonts.materialIcons(),
    // ),
    buildBackground: (pw.Context context) {
      return pw.FullPage(
        ignoreMargins: true,
        child: pw.SvgImage(svg: bgShape),
      );
    },
  );
}
