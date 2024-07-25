import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/services.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import '../../models/auto_verbal_model.dart';
import '../../models/base.dart';
import '../../providers/auto_verbal_provider.dart';

class AdminAutoVerbalDetailPage extends StatefulHookConsumerWidget {
  final AutoVerbalModel autoVerbal;

  const AdminAutoVerbalDetailPage({super.key, required this.autoVerbal});

  @override
  ConsumerState<AdminAutoVerbalDetailPage> createState() =>
      _AdminAutoVerbalDetailPageState();
}

class _AdminAutoVerbalDetailPageState
    extends ConsumerState<AdminAutoVerbalDetailPage> {
  @override
  Widget build(BuildContext context) {
    final status = useState(widget.autoVerbal.status);
    final redColor = Theme.of(context).colorScheme.error.withOpacity(0.8);
    final isAdmin = ref.watch(isAdminProvider);

    Widget? bottomAppBar;
    if (isAdmin) {
      bottomAppBar = BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: switch (status.value) {
          PropertyAndAutoVerbalStatus.pending ||
          PropertyAndAutoVerbalStatus.resubmit =>
            _buildApproveRejectButton(context, status),
          PropertyAndAutoVerbalStatus.approved => _buildApproved(),
          PropertyAndAutoVerbalStatus.rejected =>
            _buildRejected(redColor, context)
        },
      );
    }

    Future<Uint8List> _generatePdf(
        PdfPageFormat format, AutoVerbalModel data) async {
      final pdf = pw.Document(version: PdfVersion.pdf_1_4, compress: true);
      final font = await PdfGoogleFonts.robotoSlabBlack();
      final font1 = await PdfGoogleFonts.tinosRegular();
      final ByteData bytes =
          await rootBundle.load('assets/images/New_KFA_Logo_pdf.png');
      final Uint8List byteList = bytes.buffer.asUint8List();
      Uint8List bytes1 =
          (await NetworkAssetBundle(Uri.parse(data.image)).load(data.image))
              .buffer
              .asUint8List();
      final imageUrl =
          'https://maps.googleapis.com/maps/api/staticmap?center=${data.latitude},${data.longitude}&zoom=16&size=1080x920&maptype=hybrid&markers=color:red%7C%7C${data.latitude},${data.longitude}&key=AIzaSyAJt0Zghbk3qm_ZClIQOYeUT0AaV5TeOsI';

      final response = await http.get(Uri.parse(imageUrl));
      final Uint8List imageData = response.bodyBytes;

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
                                              'https://maps.googleapis.com/maps/api/staticmap?center=${data.latitude},${data.longitude}&zoom=16&size=1080x920&maptype=hybrid&markers=color:red%7C%7C${data.latitude},${data.longitude}&key=AIzaSyAJt0Zghbk3qm_ZClIQOYeUT0AaV5TeOsI'),
                                    ),
                                    pw.Text(
                                      'location map',
                                      style: pw.TextStyle(
                                          fontSize: 7, font: font1),
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
                                      padding: pw.EdgeInsets.all(2),
                                      alignment: pw.Alignment.centerLeft,
                                      decoration: pw.BoxDecoration(
                                          color: PdfColors.blue,
                                          border: pw.Border.all()),
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
                    padding: pw.EdgeInsets.all(2),
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
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
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
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
                            child:
                                // name rest with api
                                pw.Text(
                              "${data.ownerName}",
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
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
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
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
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
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
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
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
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
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
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
                            padding: pw.EdgeInsets.all(2),
                            alignment: pw.Alignment.center,
                            decoration:
                                pw.BoxDecoration(border: pw.Border.all()),
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
                        )
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
                              padding: pw.EdgeInsets.all(2),
                              alignment: pw.Alignment.centerLeft,
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
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
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
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
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
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
                              decoration:
                                  pw.BoxDecoration(border: pw.Border.all()),
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
                                padding: pw.EdgeInsets.all(2),
                                alignment: pw.Alignment.centerRight,
                                decoration:
                                    pw.BoxDecoration(border: pw.Border.all()),
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
                                padding: pw.EdgeInsets.all(2),
                                alignment: pw.Alignment.centerLeft,
                                decoration:
                                    pw.BoxDecoration(border: pw.Border.all()),
                                child: pw.Text(
                                  'USD ${data.minValue * data.area}',
                                  style:
                                      pw.TextStyle(fontSize: 10, font: font1),
                                ),
                                height: 20,
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
                                  'USD ${data.maxValue * data.area}',
                                  style:
                                      pw.TextStyle(fontSize: 10, font: font1),
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

    Future<void> savePdf() async {
      try {
        final pdfBytes =
            await _generatePdf(PdfPageFormat.a4, widget.autoVerbal);
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

    void generatePdf() async {
      //setState(() {
      Future.delayed(const Duration(seconds: 2), () {
        Printing.layoutPdf(
            onLayout: (format) => _generatePdf(format, widget.autoVerbal));
      });
      //});
    }

    final currentUserId = ref.watch(authProvider);
    final isCurrentUserOwner = widget.autoVerbal.user?.id == currentUserId;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Auto Verbal Details'),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () async {
                  BotToast.showLoading();
                  await savePdf();
                  BotToast.closeAllLoading();
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: bottomAppBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image carousel
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: widget.autoVerbal.image.length,
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: widget.autoVerbal.image,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Auto Verbal ID: ${widget.autoVerbal.id}',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: widget.autoVerbal.status.statusColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          widget.autoVerbal.status.name.toUpperCase(),
                          style: TextStyle(
                            color: widget.autoVerbal.status.statusTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.autoVerbal.propertyType.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Value Range: \$${widget.autoVerbal.minValue.toStringAsFixed(2)} - \$${widget.autoVerbal.maxValue.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Card.outlined(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailRow(
                              'Area', '${widget.autoVerbal.area} sqm'),
                          _buildDetailRow(
                              'Head', '${widget.autoVerbal.head} m'),
                          _buildDetailRow(
                              'Length', '${widget.autoVerbal.length} m'),
                          _buildDetailRow(
                            'Min Value/sqm',
                            '\$${widget.autoVerbal.minValueSqm.toStringAsFixed(2)}',
                          ),
                          _buildDetailRow(
                            'Max Value/sqm',
                            '\$${widget.autoVerbal.maxValueSqm.toStringAsFixed(2)}',
                          ),
                          _buildDetailRow('Location',
                              widget.autoVerbal.province.name ?? 'N/A'),
                          _buildDetailRow(
                              'Bank', widget.autoVerbal.bank?.name ?? 'N/A'),
                          _buildDetailRow(
                              'Owner Name', widget.autoVerbal.ownerName),
                          _buildDetailRow(
                              'Owner Phone', widget.autoVerbal.ownerPhone),
                          _buildDetailRow(
                            'Bank Officer Name',
                            widget.autoVerbal.bankOfficerName ?? 'N/A',
                          ),
                          _buildDetailRow(
                            'Bank Officer Phone',
                            widget.autoVerbal.bankOfficerPhone ?? 'N/A',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Submitted by: ${widget.autoVerbal.user?.fullName ?? "N/A"}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'Submission Date: ${widget.autoVerbal.createdAt.toLocal().toString().split(' ')[0]}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 24),
                  if (isCurrentUserOwner) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilledButton(
                          onPressed: () {
                            // context.push((_) => EditAut)
                          },
                          child: const Text('Edit'),
                        ),
                        const SizedBox(width: 16),
                        FilledButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Delete'),
                                  content: const Text(
                                    'Are you sure you want to delete this auto verbal?',
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text('Cancel'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    FilledButton(
                                      style: FilledButton.styleFrom(
                                        backgroundColor:
                                            Theme.of(context).colorScheme.error,
                                      ),
                                      child: const Text('Delete'),
                                      onPressed: () async {
                                        final close = BotToast.showLoading();
                                        final delete = ref.read(
                                          deleteAutoVerbalProvider(
                                                  widget.autoVerbal.id)
                                              .notifier,
                                        );
                                        await delete();
                                        close();
                                        if (!context.mounted) return;
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.error,
                          ),
                          child: const Text('Delete Auto Verbal'),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center _buildApproved() {
    return const Center(
      child: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 32,
            ),
            SizedBox(width: 8),
            Text(
              'Approved',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center _buildRejected(Color redColor, BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.cancel,
            color: redColor,
            size: 32,
          ),
          const SizedBox(width: 8),
          Text(
            'Rejected',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: redColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }

  Row _buildApproveRejectButton(
    BuildContext context,
    ValueNotifier<PropertyAndAutoVerbalStatus> status,
  ) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    title: const Text(
                      'Confirm Approval',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    content: const Text(
                      'Are you sure you want to approve this auto verbal?',
                      style: TextStyle(fontSize: 16),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Approve',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );

              if (confirmed == true && context.mounted) {
                // TODO: Implement approve functionality
                status.value = PropertyAndAutoVerbalStatus.approved;
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Auto Verbal approved')),
                  );
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(12)),
                border: Border.all(color: Colors.grey),
              ),
              child: const Text(
                'Approve',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () async {
              final rejectReason = await showDialog<String>(
                context: context,
                builder: (BuildContext context) {
                  String? rejectReason;

                  return AlertDialog(
                    title: const Text('Reject Auto Verbal'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                            'Are you sure you want to reject this auto verbal?'),
                        const SizedBox(height: 16),
                        TextField(
                          autofocus: true,
                          decoration: const InputDecoration(
                            labelText: 'Reason for rejection',
                            border: OutlineInputBorder(),
                          ),
                          textCapitalization: TextCapitalization.sentences,
                          maxLines: 3,
                          onChanged: (value) => rejectReason = value,
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (rejectReason.isNullOrBlank) {
                            BotToast.showText(text: 'Please provide reason!');
                            return;
                          }
                          Navigator.of(context).pop(rejectReason);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.error,
                        ),
                        child: const Text(
                          'Reject',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  );
                },
              );

              if (rejectReason.isNotNullOrBlank && context.mounted) {
                // TODO: Implement reject functionality
                status.value = PropertyAndAutoVerbalStatus.rejected;
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Auto Verbal rejected')),
                  );
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error.withOpacity(0.8),
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(12)),
                border: Border.all(color: Colors.grey),
              ),
              child: const Text(
                'Reject',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
