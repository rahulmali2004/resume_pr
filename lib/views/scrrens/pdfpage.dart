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
                      color: PdfColor.fromInt(0xff1D2939),
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
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
                          pw.SizedBox(height: 10),
                          pw.Divider(
                            color: PdfColors.blue,
                          ),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            "Contact",
                            style: pw.TextStyle(
                              fontSize: 24,
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Divider(
                            color: PdfColors.blue,
                          ),
                          pw.SizedBox(
                            height: 10,
                          ),
                          pw.Text(
                            "${Global.name}",
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            Global.email!,
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            "${Global.contact!}",
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            Global.a1!,
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            "${Global.a2}",
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            "${Global.a3}",
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(
                            height: 10,
                          ),
                          pw.Divider(
                            color: PdfColors.blue,
                          ),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            "Carrier",
                            style: pw.TextStyle(
                              fontSize: 24,
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Divider(
                            color: PdfColors.blue,
                          ),
                          pw.Text(
                            "${Global.carrier1}",
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(
                            height: 10,
                          ),
                          pw.Text(
                            "${Global.carrier2}",
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.SizedBox(height: 10),
                          pw.Text(
                            "Skills",
                            style: pw.TextStyle(
                              fontSize: 18,
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.SizedBox(height: 10),
                          ...Global.techanical
                              .map(
                                (e) => pw.Text(
                              "$e",
                              style: pw.TextStyle(
                                fontSize: 26,
                                color: PdfColors.white,
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
                    pw.Padding(
                      padding: pw.EdgeInsets.all(30),
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                        children: [
                          pw.Divider(),
                          pw.Align(
                            alignment: pw.Alignment.topCenter,
                            child: pw.Text("Personal Details",textAlign: pw.TextAlign.left,style: pw.TextStyle(
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 25,
                            )),
                          ),
                          pw.Divider(),
                          pw.Align(
                            alignment: pw.Alignment.topLeft,
                              child: pw.Text("Date Of Birth",textAlign: pw.TextAlign.left,style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 18,
                                color: PdfColors.black,
                              )),
                          ),
                          pw.Text("${Global.b1}",textAlign: pw.TextAlign.left,style: pw.TextStyle(
                            fontSize: 18,
                            color: PdfColors.black,
                          )),
                        ],
                      ),
                    )
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
