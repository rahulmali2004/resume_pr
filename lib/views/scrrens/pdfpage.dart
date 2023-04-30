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

                          pw.Divider(color: PdfColors.blue),
                          pw.Text(
                            "Personal Details",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blue,
                              fontSize: 20,
                            ),
                          ),
                          pw.SizedBox(height: 5),
                          pw.Divider(color: PdfColors.blue),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "DOB:- ${Global.b1}",
                                style: pw.TextStyle(
                                  fontSize: 20,

                                  color: PdfColors.white,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "marital:- ${Global.maritstatus}",
                                style: pw.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.white,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              ...Global.language
                                  .map(
                                    (e) => pw.Text(
                                  "Language:-$e",
                                  style: pw.TextStyle(
                                    fontSize: 20,
                                    color: PdfColors.white,
                                    fontWeight: pw.FontWeight.bold,
                                  ),
                                ),
                              )
                                  .toList(),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "Nationality:- ${Global.nationality}",
                                style: pw.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.white,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                            ]
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.Text(
                            "Skills",
                            style: pw.TextStyle(
                              fontSize: 24,
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              ...Global.techanical
                                  .map(
                                    (e) => pw.Text(
                                  "$e",
                                  style: pw.TextStyle(
                                    fontSize: 20,
                                    color: PdfColors.white,
                                    fontWeight: pw.FontWeight.bold,
                                  ),
                                ),
                              )
                                  .toList(),
                            ]
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.Text(
                            "Hobbies",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blue,
                              fontSize: 20,
                            ),
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              ...Global.hobbies
                                  .map(
                                    (e) => pw.Text(
                                  "$e",
                                  style: pw.TextStyle(
                                    fontSize: 20,
                                    color: PdfColors.white,
                                    fontWeight: pw.FontWeight.bold,
                                  ),
                                ),
                              )
                                  .toList(),
                            ]
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.Text(
                            "Achievments",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blue,
                              fontSize: 20,
                            ),
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                ...Global.achiev
                                    .map(
                                      (e) => pw.Text(
                                    "$e",
                                    style: pw.TextStyle(
                                      fontSize: 20,
                                      color: PdfColors.white,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                )
                                    .toList(),
                              ]
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.Text(
                            "References",
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blue,
                              fontSize: 20,
                            ),
                          ),
                          pw.Divider(color: PdfColors.blue),
                          pw.SizedBox(height: 5),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "${Global.r1}",
                                style: pw.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.white,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "${Global.r2}",
                                style: pw.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.white,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "${Global.r3}",
                                style: pw.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.white,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ]
                          )
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
                      padding: pw.EdgeInsets.all(10),
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                        children: [
                          pw.Divider(),
                          pw.Text(
                            "Contact",
                            style: pw.TextStyle(
                              fontSize: 20,
                              color: PdfColors.blue,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Divider(),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Name:- ${Global.name}",
                                style: pw.TextStyle(
                                  fontSize: 18,
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "email id:- ${Global.email}",
                                style: pw.TextStyle(
                                  fontSize: 18,
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "contact No:- ${Global.contact!}",
                                style: pw.TextStyle(
                                  fontSize: 18,
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "Address:- ${Global.a1}",
                                style: pw.TextStyle(
                                  fontSize: 18,
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "${Global.a2}",
                                style: pw.TextStyle(
                                  fontSize: 18,
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.SizedBox(height: 5),
                              pw.Text(
                                "${Global.a3}",
                                style: pw.TextStyle(
                                  fontSize: 18,
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.center,
                                children: [
                                  pw.Divider(
                                    color: PdfColors.blue,
                                  ),
                                  pw.Text(
                                    "Carrier",
                                    style: pw.TextStyle(
                                      fontSize: 20,
                                      color: PdfColors.blue,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                  pw.Divider(
                                    color: PdfColors.blue,
                                  ),
                                ]
                              ),
                              pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      "Carrier Objective:- ${Global.carrier1}",
                                      style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.black,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    pw.Text(
                                      "Current Designation:- ${Global.carrier2}",
                                      style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.black,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                  ]
                              ),
                              pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.center,
                                  children: [
                                    pw.Divider(
                                      color: PdfColors.blue,
                                    ),
                                    pw.Text(
                                      "Education",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        color: PdfColors.blue,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    pw.Divider(
                                      color: PdfColors.blue,
                                    ),
                                  ]
                              ),
                              pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      "Course:- ${Global.education}",
                                      style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.black,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      height: 5,
                                    ),
                                    pw.Text(
                                      "School/collage/Institute:- ${Global.education1}",
                                      style: pw.TextStyle(
                                        fontSize: 18,
                                        color: PdfColors.black,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    pw.SizedBox(height: 5),
                                    pw.Column(
                                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text(
                                            "School/collage/Institute:- ${Global.education2}",
                                            style: pw.TextStyle(
                                              fontSize: 18,
                                              color: PdfColors.black,
                                              fontWeight: pw.FontWeight.bold,
                                            ),
                                          ),
                                          pw.SizedBox(
                                            height: 5,
                                          ),
                                          pw.Text(
                                            "Year of Pass:- ${Global.education3}",
                                            style: pw.TextStyle(
                                              fontSize: 18,
                                              color: PdfColors.black,
                                              fontWeight: pw.FontWeight.bold,
                                            ),
                                          ),
                                        ]
                                    ),
                                    pw.Column(
                                        mainAxisAlignment: pw.MainAxisAlignment.center,
                                        children: [
                                          pw.Divider(
                                            color: PdfColors.blue,
                                          ),
                                          pw.Text(
                                            "Experience",
                                            style: pw.TextStyle(
                                              fontSize: 20,
                                              color: PdfColors.blue,
                                              fontWeight: pw.FontWeight.bold,
                                            ),
                                          ),
                                          pw.Divider(
                                            color: PdfColors.blue,
                                          ),
                                        ]
                                    ),
                                    pw.Column(
                                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text(
                                            "Company name:- ${Global.exprience}",
                                            style: pw.TextStyle(
                                              fontSize: 18,
                                              color: PdfColors.black,
                                              fontWeight: pw.FontWeight.bold,
                                            ),
                                          ),
                                          pw.SizedBox(
                                            height: 5,
                                          ),
                                          pw.Text(
                                            "School/collage/Institute:- ${Global.exprience1}",
                                            style: pw.TextStyle(
                                              fontSize: 18,
                                              color: PdfColors.black,
                                              fontWeight: pw.FontWeight.bold,
                                            ),
                                          ),
                                          pw.SizedBox(height: 5),
                                          pw.Column(
                                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.Text(
                                                  "Roles:- ${Global.exprience2}",
                                                  style: pw.TextStyle(
                                                    fontSize: 18,
                                                    color: PdfColors.black,
                                                    fontWeight: pw.FontWeight.bold,
                                                  ),
                                                ),
                                                pw.SizedBox(
                                                  height: 5,
                                                ),
                                                pw.Text(
                                                  "Employed Status:- ${Global.previously}",
                                                  style: pw.TextStyle(
                                                    fontSize: 18,
                                                    color: PdfColors.black,
                                                    fontWeight: pw.FontWeight.bold,
                                                  ),
                                                ),pw.SizedBox(
                                                  height: 5,
                                                ),
                                                pw.Text(
                                                  "Date Joined/Exit:- ${Global.exprience3}",
                                                  style: pw.TextStyle(
                                                    fontSize: 18,
                                                    color: PdfColors.black,
                                                    fontWeight: pw.FontWeight.bold,
                                                  ),
                                                ),
                                              ]
                                          ),
                                          pw.Column(
                                              mainAxisAlignment: pw.MainAxisAlignment.center,
                                              children: [
                                                pw.Divider(
                                                  color: PdfColors.blue,
                                                ),
                                                pw.Text(
                                                  "Projects",
                                                  style: pw.TextStyle(
                                                    fontSize: 20,
                                                    color: PdfColors.blue,
                                                    fontWeight: pw.FontWeight.bold,
                                                  ),
                                                ),
                                                pw.Divider(
                                                  color: PdfColors.blue,
                                                ),
                                              ]
                                          ),
                                          pw.Column(
                                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.Text(
                                                  "Title:- ${Global.project}",
                                                  style: pw.TextStyle(
                                                    fontSize: 18,
                                                    color: PdfColors.black,
                                                    fontWeight: pw.FontWeight.bold,
                                                  ),
                                                ),
                                                ...Global.projects
                                                    .map(
                                                      (e) => pw.Text(
                                                    "Technologies:-$e",
                                                    style: pw.TextStyle(
                                                      fontSize: 20,
                                                      color: PdfColors.black,
                                                      fontWeight: pw.FontWeight.bold,
                                                    ),
                                                  ),
                                                )
                                                    .toList(),
                                                pw.Text(
                                                  "Roles:- ${Global.project1}",
                                                  style: pw.TextStyle(
                                                    fontSize: 18,
                                                    color: PdfColors.black,
                                                    fontWeight: pw.FontWeight.bold,
                                                  ),
                                                ),
                                                pw.Text(
                                                  "Technologices:- ${Global.project2}",
                                                  style: pw.TextStyle(
                                                    fontSize: 18,
                                                    color: PdfColors.black,
                                                    fontWeight: pw.FontWeight.bold,
                                                  ),
                                                ),
                                                pw.Text(
                                                  "Descripation:- ${Global.project3}",
                                                  style: pw.TextStyle(
                                                    fontSize: 18,
                                                    color: PdfColors.black,
                                                    fontWeight: pw.FontWeight.bold,
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ]
                                    ),
                                  ]
                              ),
                            ],
                          ),
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
        backgroundColor: const Color(0xff1D2939),
      ),
      body: PdfPreview(
        build: (format) => pdf.save(),
      ),
    );
  }
}
