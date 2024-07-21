import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

// Define a provider for your verbal data
final verbalDataProvider =
    StateNotifierProvider<VerbalDataNotifier, VerbalData>((ref) {
  return VerbalDataNotifier();
});

class VerbalData {
  get properties => null;
  // Define your verbal data structure here
}

class VerbalDataNotifier extends StateNotifier<VerbalData> {
  VerbalDataNotifier() : super(VerbalData());

  // Define methods to update verbal data
}

class DetailVerbalPage extends HookConsumerWidget {
  DetailVerbalPage({Key? key}) : super(key: key);

  final GlobalKey _globalKeyScreenShot = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final verbalData = ref.watch(verbalDataProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Detail Verbal")),
      body: SafeArea(
        child: RepaintBoundary(
          key: _globalKeyScreenShot,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Hello"), // Your main content here, using verbalData
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Printing.layoutPdf(
            onLayout: (format) => _generatePdf(format, verbalData),
          );
        },
        child: Icon(Icons.print),
      ),
    );
  }

  Future<Uint8List> _generatePdf(PdfPageFormat format, VerbalData data) async {
    final pdf = pw.Document();
    final font = await PdfGoogleFonts.robotoSlabBlack();

    pdf.addPage(
      pw.MultiPage(
        build: (context) => [
          pw.Column(
            children: [
              pw.Row(
                children: [
                  pw.Text(
                    'Email : info@kfa.com.kh',
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 7,
                      font: font,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );

    return pdf.save();
  }
}
