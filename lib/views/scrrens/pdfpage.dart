import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

import '../components/iconbackpage.dart';
import 'package:pdf/widgets.dart' as pw;

class pdfpage extends StatefulWidget {
  const pdfpage({Key? key}) : super(key: key);

  @override
  State<pdfpage> createState() => _pdfpageState();
}

class _pdfpageState extends State<pdfpage> {
  pw.Document pdf = pw.Document();
  generatePdf() async {
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.zero,
        build: (pw.Context Context) => pw.Container(
          height: double.infinity,
          width: double.infinity,
          child: pw.Row(
            children: [
              pw.Expanded(child: pw.Column(
                children: [
                  pw.Container(
                    color: PdfColors.red,
                  ),
                ]
              ))
            ]
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generatePdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: const Text(
          "PDF",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
      body: PdfPreview(
        build: (format) => pdf.save(),
    ),
    );
  }
}
