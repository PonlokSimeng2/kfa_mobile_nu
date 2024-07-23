// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:kfa_mobile_nu/constaints.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart';

class DetailAutoVerbalPage extends StatefulWidget {
  const DetailAutoVerbalPage({super.key, required this.data});
  final AutoVerbalModel data;
  @override
  State<DetailAutoVerbalPage> createState() => _detail_searchingState();
}

class _detail_searchingState extends State<DetailAutoVerbalPage> {
  List list = [];

  var get_image = [];

  double? total_MIN = 0;
  double? total_MAX = 0;
  List land = [];
  double? fsvM, fsvN, fx, fn;
  void generatePdf() async {
    setState(() {
      Future.delayed(const Duration(seconds: 2), () {
        Printing.layoutPdf(
            onLayout: (format) => _generatePdf(format, widget.data));
      });
    });
  }

  Future<void> savePdf() async {
    final pdf = await _generatePdf(PdfPageFormat.a4, widget.data);
    final appDocDir = await getApplicationDocumentsDirectory();
    final appDocPath = appDocDir.path;
    final file = File('$appDocPath/document.pdf');
    // await file.writeAsBytes(await pdf.save());
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('PDF saved to ${file.path}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    var wth = MediaQuery.of(context).size.width * 9;
    return AuthWrapperWidget(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(widget.data.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          savePdf();
        },
        child: const Icon(Icons.save),
      ),
    ));
  }

  Future<Uint8List> _generatePdf(
      PdfPageFormat format, AutoVerbalModel data) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_4, compress: true);
    final font = await PdfGoogleFonts.robotoSlabBlack();
    final font1 = await PdfGoogleFonts.tinosRegular();
    final font2 = await PdfGoogleFonts.tinosBold();
    final ByteData bytes =
        await rootBundle.load('assets/images/New_KFA_Logo_pdf.png');
    final Uint8List byteList = bytes.buffer.asUint8List();
    Uint8List bytes1 =
        (await NetworkAssetBundle(Uri.parse(data.image)).load(data.image))
            .buffer
            .asUint8List();
    Uint8List? bytes2;
    if (data.image != null || data.image != "No") {
      bytes2 = base64Decode(data.image);
    }
    Future<pw.PageTheme> _myPageTheme(PdfPageFormat format) async {
      final bgShape =
          await rootBundle.loadString('assets/images/Letter En-Kh.svg');

      format = format.applyMargin(
        left: 2.0 * PdfPageFormat.cm,
        top: 1.0 * PdfPageFormat.cm,
        right: 2.0 * PdfPageFormat.cm,
        bottom: 1.0 * PdfPageFormat.cm,
      );
      return pw.PageTheme(
        pageFormat: format,
        buildBackground: (pw.Context context) {
          return pw.FullPage(
            ignoreMargins: true,
            child: pw.SvgImage(svg: bgShape),
          );
        },
      );
    }

    final pageTheme = await _myPageTheme(format);
    pdf.addPage(
      pw.MultiPage(
          pageTheme: pageTheme,
          build: (context) {
            return [
              pw.Column(children: [
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
                              pw.MemoryImage(byteList),
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
                                      data:
                                          "https://www.oneclickonedollar.com/#/${data.autoVerbalId}",
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
                                      data:
                                          "https://www.latlong.net/c/?lat=${data.latitude}&long=${data.longitude}",
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
                    // ... (rest of the PDF generation code remains unchanged)
                  ],
                ),
              ]),
            ];
          }),
    );
    return pdf.save();
  }

  Widget _buildDetailVerbal(BuildContext context, AutoVerbalModel data) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDetailRow('Auto Verbal ID', data.autoVerbalId.toString()),
          _buildDetailRowWithImage(
              '', data.image, data.latitude, data.longitude),
          _buildDetailRow('Province', data.province.name),
          _buildDetailRow('Owner Name', data.ownerName),
          _buildDetailRow('Property Type', data.propertyType.name),
          _buildDetailRow('Bank', data.bank?.name ?? 'N/A'),
          _buildDetailRow('Latitude', data.latitude.toString()),
          _buildDetailRow('Longitude', data.longitude.toString()),
          _buildDetailRow('Created At', data.createdAt.toString()),
          _buildDetailRow('Min Value', data.minValue.toString()),
          _buildDetailRow('Max Value', data.maxValue.toString()),
          _buildDetailRow('Area', data.area.toString()),
          _buildDetailRow('Head', data.head.toString()),
          _buildDetailRow('Length', data.length.toString()),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text(
                label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text(
                value,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRowWithImage(
      String label, String imageUrl, double latitude, double longitude) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.network(imageUrl),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 233,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://maps.googleapis.com/maps/api/staticmap?center=$latitude, $longitude&zoom=16&size=1080x920&maptype=hybrid&markers=color:red%7C%7C$latitude, $longitude&key=AIzaSyAJt0Zghbk3qm_ZClIQOYeUT0AaV5TeOsI',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
