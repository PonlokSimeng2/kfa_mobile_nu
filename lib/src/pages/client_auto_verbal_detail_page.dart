// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';

class ClientDetailAutoVerbalPage extends StatefulHookConsumerWidget {
  const ClientDetailAutoVerbalPage({super.key, required this.data});
  final AutoVerbalModel data;
  @override
  ConsumerState<ClientDetailAutoVerbalPage> createState() => _detail_searchingState();
}

// ignore: camel_case_types
class _detail_searchingState extends ConsumerState<ClientDetailAutoVerbalPage> {
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
          onLayout: (format) => _generatePdf(format, widget.data),
        );
      });
    });
  }

  Future<void> savePdf() async {
    try {
      final pdfBytes = await _generatePdf(PdfPageFormat.a4, widget.data);
      final appDocDir = await getApplicationDocumentsDirectory();
      final appDocPath = appDocDir.path;
      final file = File('$appDocPath/document.pdf');
      await file.writeAsBytes(pdfBytes);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('PDF saved to ${file.path}')),
      );
      await Share.shareXFiles([XFile(file.path)], text: 'Sharing PDF file');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving or sharing PDF: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthWrapperWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Detail AutoVerbal'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.share),
                onPressed: () async {
                  BotToast.showLoading();
                  await savePdf();
                  BotToast.closeAllLoading();
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: _buildDetailVerbal(context, widget.data),
        ),
      ),
    );
  }

  Future<Uint8List> _generatePdf(
    PdfPageFormat format,
    AutoVerbalModel data,
  ) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_4, compress: true);
    final font = await PdfGoogleFonts.robotoSlabBlack();
    final font1 = await PdfGoogleFonts.tinosRegular();
    final ByteData bytes = await rootBundle.load('assets/images/New_KFA_Logo_pdf.png');
    final Uint8List byteList = bytes.buffer.asUint8List();
    final Uint8List bytes1 =
        (await NetworkAssetBundle(Uri.parse(data.image.first)).load(data.image.first))
            .buffer
            .asUint8List();
    final imageUrl =
        'https://maps.googleapis.com/maps/api/staticmap?center=${data.latitude},${data.longitude}&zoom=16&size=1080x920&maptype=hybrid&markers=color:red%7C%7C${data.latitude},${data.longitude}&key=AIzaSyAJt0Zghbk3qm_ZClIQOYeUT0AaV5TeOsI';

    final response = await http.get(Uri.parse(imageUrl));
    final Uint8List imageData = response.bodyBytes;

    Future<pw.PageTheme> myPageTheme(PdfPageFormat format) async {
      final bgShape = await rootBundle.loadString('assets/images/Letter En-Kh.svg');

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

    final pageTheme = await myPageTheme(format);
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
                                  ),
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
                                          'https://www.google.com/maps/search/?api=1&query=${data.latitude},${data.longitude}&t=k&z=18&polygon=${data.latitude},${data.longitude}|${data.latitude + 0.001},${data.longitude}|${data.latitude + 0.001},${data.longitude + 0.001}|${data.latitude},${data.longitude + 0.001}',
                                    ),
                                  ),
                                  pw.Text(
                                    'location map',
                                    style: pw.TextStyle(fontSize: 7, font: font1),
                                  ),
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
                                      border: pw.Border.all(),
                                      color: PdfColors.blue,
                                    ),
                                    //color: Colors.red,
                                    child: pw.Text(
                                      "DATE: ${data.createdAt.toString()}",
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
                                      color: PdfColors.blue,
                                      border: pw.Border.all(),
                                    ),
                                    child: pw.Text(
                                      "CODE: ${data.autoVerbalId}",
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
                          ),
                        ],
                      ),
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Text(
                            "Requested Date :${data.createdAt.toString()} ",
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
                    "Referring to your request letter for verbal check by ${data.bank?.name ?? ""}, we estimated the value of property as below.",
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Text(
                            " ${data.propertyType.name}",
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child:
                              // name rest with api
                              pw.Text(
                            data.ownerName,
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          // name rest with api
                          child: pw.Text(
                            "Contact No : ${data.ownerPhone}",
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Text(
                            " ${data.bankOfficerName}",
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Text(
                            "Contact No : ${data.bankOfficerPhone}",
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Text(
                            "Latitude: ${data.latitude}",
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
                          decoration: pw.BoxDecoration(border: pw.Border.all()),
                          child: pw.Text(
                            "Longtitude: ${data.longitude}",
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
                pw.Container(
                  height: 110,
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Container(
                        width: 240,
                        height: 110,
                        alignment: pw.Alignment.center,
                        child: pw.Image(
                          pw.MemoryImage(
                            bytes1,
                          ),
                          fit: pw.BoxFit.fitWidth,
                        ),
                      ),
                      pw.SizedBox(width: 0.1),
                      pw.Container(
                        height: 233,
                        width: 233,
                        decoration: pw.BoxDecoration(
                          borderRadius: pw.BorderRadius.circular(2),
                          image: pw.DecorationImage(
                            image: pw.MemoryImage(imageData),
                            fit: pw.BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
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
                                  border: pw.Border.all(),
                                  color: PdfColors.blue,
                                ),
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
                                  border: pw.Border.all(),
                                  color: PdfColors.blue,
                                ),
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
                                  border: pw.Border.all(),
                                  color: PdfColors.blue,
                                ),
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
                                  border: pw.Border.all(),
                                  color: PdfColors.blue,
                                ),
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
                                  border: pw.Border.all(),
                                  color: PdfColors.blue,
                                ),
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
                                  border: pw.Border.all(),
                                  color: PdfColors.blue,
                                ),
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
                      pw.Row(
                        children: [
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              padding: pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(),
                              ),
                              child: pw.Text(
                                " ${data.propertyType.name}",
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
                              decoration: pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                '${data.area}/sqm',
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
                              decoration: pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                'USD ${data.minValue}',
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
                              decoration: pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                'USD ${data.maxValue}',
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
                              decoration: pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                'USD ${data.minValue * data.area}',
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
                              decoration: pw.BoxDecoration(border: pw.Border.all()),
                              child: pw.Text(
                                'USD ${data.maxValue * data.area}',
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
                                decoration: pw.BoxDecoration(border: pw.Border.all()),
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
                                decoration: pw.BoxDecoration(border: pw.Border.all()),
                                child: pw.Text(
                                  'USD ${data.minValue * data.area}',
                                  style: pw.TextStyle(fontSize: 10, font: font1),
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
                                decoration: pw.BoxDecoration(border: pw.Border.all()),
                                child: pw.Text(
                                  'USD ${data.maxValue * data.area}',
                                  style: pw.TextStyle(fontSize: 10, font: font1),
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
                        '*Note: It is only first price which you took from this verbal check data. The accurate value of property when we have the actual site property inspection.We are not responsible for this case when you provided the wrong land and building size or any fraud.',
                        style: pw.TextStyle(fontSize: 6, font: font1),
                      ),
                    ],
                  ),
                ),
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
                              'Verbal Check Replied By:${data.ownerName} ',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 7,
                                font: font1,
                              ),
                              textAlign: pw.TextAlign.right,
                            ),
                            pw.SizedBox(height: 4),
                            pw.Text(
                              ' ${data.bankOfficerName}',
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
    return pdf.save();
  }

  Widget _buildDetailVerbal(BuildContext context, AutoVerbalModel data) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow('Auto Verbal ID', data.autoVerbalId.toString()),
            _buildDetailRowWithImage(
              '',
              data.image.first,
              data.latitude,
              data.longitude,
            ),
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
            _buildDetailRow('Road', data.road?.name ?? 'N/A'),
            _buildDetailRow('Land Length', data.landlength.toString()),
            _buildDetailRow('Land Width', data.landwidth.toString()),
            _buildDetailRow('Building Length', data.buildinglength.toString()),
            _buildDetailRow('Building Width', data.buildingwidth.toString()),
            _buildDetailRow('Bed', data.bed.toString()),
            _buildDetailRow('Bath', data.bath.toString()),
            _buildDetailRow('Living Room', data.livingroom.toString()),
            _buildDetailRow('Floor', data.floor.toString()),
          ],
        ),
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
    String label,
    String imageUrl,
    double latitude,
    double longitude,
  ) {
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
                    child: Container(
                      height: 233,
                      width: 233,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(
                          image: NetworkImage(
                            imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 233,
                      width: 233,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=16&size=1080x920&maptype=hybrid&markers=color:red%7C%7C$latitude,$longitude&key=AIzaSyAJt0Zghbk3qm_ZClIQOYeUT0AaV5TeOsI',
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
