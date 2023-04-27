import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:resume_pr/modals/globals_page.dart';

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
              pw.Expanded(
                flex: 1,
                child: pw.Column(
                  children: [
                    pw.Container(
                      height: 841,
                      color: PdfColor.fromInt(0xff0061A4),
                      child: pw.Column(
                        children: [
                          pw.Container(
                            height: 200,
                            width: 250,
                            decoration: pw.BoxDecoration(
                              shape: pw.BoxShape.circle,
                              image: pw.DecorationImage(
                                image: pw.MemoryImage(
                                  File(Global.image!.path).readAsBytesSync(),
                                ),
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 20),
                          ...Global.techanical
                              .map(
                                (e) => pw.Text(
                                  "Skill: $e",
                                  style: pw.TextStyle(
                                    color: PdfColors.white,
                                    fontSize: 26,
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Column(
                  children: [
                    pw.Container(
                      height: double.infinity,
                      color: PdfColor.fromInt(0xff3B3B3D),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
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
