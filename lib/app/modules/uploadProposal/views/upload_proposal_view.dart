import 'package:app_ukm/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

class UploadProposalView extends StatefulWidget {
  const UploadProposalView({Key? key}):super(key: key);
  @override
  _UploadProposalViewState createState()=> _UploadProposalViewState();
}
class _UploadProposalViewState extends State<UploadProposalView> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _jenisController = TextEditingController();
  TextEditingController _descController = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tambah Proposal"),
        ),
        body: Form(
          child: Column(
            children: [
              TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Nama Proposal"),
            ),
            TextFormField(
              controller: _jenisController,
              decoration: InputDecoration(labelText: "Jenis Proposal"),
            ),
            TextFormField(
              controller: _descController,
              decoration: InputDecoration(labelText: "Deskripsi Singkat Proposal"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              print(_nameController.text);
              print(_jenisController.text);
              print(_descController.text);
            }, 
            child: Text("Kirim"),)
            ],
          ),
        ),
      );
    }
}
