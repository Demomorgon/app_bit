// // ignore_for_file: file_names, use_build_context_synchronously

// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:open_app_file/open_app_file.dart';
// import 'package:mvdi_bcb/UI/Mensajes/Mensajes.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';

// Future<void> saveAndLaunchFile(List<int> bytes, String fileName,
//     String extencion, BuildContext context) async {
//   // saveeee(bytes, fileName, extencion, context);
//   var status = await Permission.accessMediaLocation.status;
//   if (status.isGranted) {
//     saveeee(bytes, fileName, extencion, context);
//   } else if (status.isDenied) {
//     if (await Permission.accessMediaLocation.request().isGranted) {
//       saveeee(bytes, fileName, extencion, context);
//     }
//   } else {
//     print('cualquir cosa');
//   }
//   // PermissionStatus checkPermission = await Permission.storage.request();
//   // // print(checkPermission1);
//   // if (checkPermission.isGranted) {
//   //   // Permission.storage.request();
//   //   //   }else{
//   // }
//   // // }
// }

// Future<void> saveeee(List<int> bytes, String fileName, String extencion,
//     BuildContext context) async {
//   Directory downloadDirectory;

//   if (Platform.isIOS) {
//     downloadDirectory = await getApplicationDocumentsDirectory();
//   } else {
//     downloadDirectory = Directory('/storage/emulated/0/Download');
//     if (!await downloadDirectory.exists())
//       downloadDirectory = (await getExternalStorageDirectory())!;
//   }

//   String filePathName = "${downloadDirectory.path}/$fileName";
//   File savedFile = File(filePathName);
//   await savedFile.writeAsBytes(bytes);
//   // if (PlataformaDir.isWindos()) {
//   // String path = await FileSaver.instance.saveFile(
//   //     name: fileName,
//   //     bytes: Uint8List.fromList(bytes),
//   //     ext: extencion,
//   //     mimeType: extencion == xlsx
//   //         ? MimeType.microsoftExcel
//   //         : (extencion == pdf
//   //             ? MimeType.pdf
//   //             : (extencion == png ? MimeType.png : MimeType.other)));
//   var len = AppLocalizations.of(context);
//   mensajeCorrecto(context, len!.descargadoExcel);
//   // } else {
//   // final path = (await getExternalStorageDirectory())?.path;
//   // final file = File('$path/$fileName.$extencion');
//   // await file.writeAsBytes(bytes, flush: true);
//   // OpenFile.open('$path/$fileName');
//   // OpenAppFile.open('$path/$fileName.$extencion');

//   OpenAppFile.open(filePathName);
// }

// Future downloadFile2(
//     {required String filename,
//     required Uint8List bytes,
//     required BuildContext context}) async {
//   try {
//     Directory downloadDirectory;

//     if (Platform.isIOS) {
//       downloadDirectory = await getApplicationDocumentsDirectory();
//     } else {
//       downloadDirectory = Directory('/storage/emulated/0/Download');
//       if (!await downloadDirectory.exists())
//         downloadDirectory = (await getExternalStorageDirectory())!;
//     }

//     String filePathName = "${downloadDirectory.path}/$filename";
//     File savedFile = File(filePathName);

//     // if (fileExists && state.mounted) {
//     //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("La imagen ya se ha descargado")));
//     // } else {
//     savedFile.writeAsBytes(bytes);
//     // setState(() {
//     //   downloadedFile = savedFile;
//     // });
//     //}
//     OpenAppFile.open(filePathName);
//   } catch (error) {
//     print("Ocurrió un error, no se pudo realizar la descarga -> $error");
//   }
// }
