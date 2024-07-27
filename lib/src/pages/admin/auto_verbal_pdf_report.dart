import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../models/auto_verbal_model.dart';

Future<Uint8List> generateAutoVerbalPdf(
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
                    margin: const pw.EdgeInsets.only(bottom: 5),
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
                                        'https://maps.googleapis.com/maps/api/staticmap?center=${data.latitude},${data.longitude}&zoom=16&size=1080x920&maptype=hybrid&markers=color:red%7C%7C${data.latitude},${data.longitude}&key=AIzaSyAJt0Zghbk3qm_ZClIQOYeUT0AaV5TeOsI',
                                  ),
                                ),
                                pw.Text(
                                  'location map',
                                  style: pw.TextStyle(
                                    fontSize: 7,
                                    font: font1,
                                  ),
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
                                  padding: const pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.centerLeft,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(),
                                    color: PdfColors.blue,
                                  ),
                                  child: pw.Text(
                                    "DATE: ${data.createdAt.toString()}",
                                    style: pw.TextStyle(
                                      fontSize: 11,
                                      font: font1,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                  height: 20,
                                ),
                              ),
                              pw.Expanded(
                                flex: 4,
                                child: pw.Container(
                                  padding: const pw.EdgeInsets.all(2),
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
                        padding: const pw.EdgeInsets.all(2),
                        alignment: pw.Alignment.centerLeft,
                        decoration: pw.BoxDecoration(border: pw.Border.all()),
                        child: pw.Text(
                          "Requested Date :${data.createdAt.toString()} ",
                          style: pw.TextStyle(fontSize: 11, font: font1),
                        ),
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ),
              pw.Container(
                padding: const pw.EdgeInsets.all(2),
                alignment: pw.Alignment.centerLeft,
                decoration: pw.BoxDecoration(border: pw.Border.all()),
                child: pw.Text(
                  "Referring to your request letter for verbal check by ${data.bank?.name ?? ""}, we estimated the value of property as below.",
                  overflow: pw.TextOverflow.clip,
                  style: pw.TextStyle(font: font1, fontSize: 11),
                ),
                height: 34,
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
                          "Property Information: ",
                          style: pw.TextStyle(
                            fontSize: 11,
                            font: font1,
                          ),
                        ),
                        height: 20,
                      ),
                    ),
                    pw.Expanded(
                      flex: 6,
                      child: pw.Container(
                        padding: const pw.EdgeInsets.all(2),
                        alignment: pw.Alignment.centerLeft,
                        decoration: pw.BoxDecoration(border: pw.Border.all()),
                        child: pw.Text(
                          " ${data.propertyType.name}",
                          style: pw.TextStyle(fontSize: 11, font: font1),
                        ),
                        height: 20,
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
                      ),
                    ),
                    pw.Expanded(
                      flex: 2,
                      child: pw.Container(
                        padding: const pw.EdgeInsets.all(2),
                        alignment: pw.Alignment.center,
                        decoration: pw.BoxDecoration(border: pw.Border.all()),
                        child: pw.Text(
                          "Longtitude: ${data.longitude}",
                          style: pw.TextStyle(fontSize: 11, font: font1),
                        ),
                        height: 20,
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
              pw.Column(
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
                          padding: const pw.EdgeInsets.all(2),
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
                        ),
                      ),
                      pw.Expanded(
                        flex: 2,
                        child: pw.Container(
                          padding: const pw.EdgeInsets.all(2),
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
                        ),
                      ),
                      pw.Expanded(
                        flex: 2,
                        child: pw.Container(
                          padding: const pw.EdgeInsets.all(2),
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
                          padding: const pw.EdgeInsets.all(2),
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
                          padding: const pw.EdgeInsets.all(2),
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
                          padding: const pw.EdgeInsets.all(2),
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
                            padding: const pw.EdgeInsets.all(2),
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
                          ),
                        ),
                        pw.Expanded(
                          flex: 2,
                          child: pw.Container(
                            padding: const pw.EdgeInsets.all(2),
                            alignment: pw.Alignment.centerLeft,
                            decoration: pw.BoxDecoration(border: pw.Border.all()),
                            child: pw.Text(
                              'USD ${data.minValue * data.area}',
                              style: pw.TextStyle(fontSize: 10, font: font1),
                            ),
                            height: 20,
                          ),
                        ),
                        pw.Expanded(
                          flex: 2,
                          child: pw.Container(
                            padding: const pw.EdgeInsets.all(2),
                            alignment: pw.Alignment.centerLeft,
                            decoration: pw.BoxDecoration(border: pw.Border.all()),
                            child: pw.Text(
                              'USD ${data.maxValue * data.area}',
                              style: pw.TextStyle(fontSize: 10, font: font1),
                            ),
                            height: 20,
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
