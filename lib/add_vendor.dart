import 'package:flutter/material.dart';

const TextStyle mainTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold);
class AddVendor extends StatelessWidget{
  const AddVendor({super.key});
  final double gape = 30;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Vendor"), 
        backgroundColor: const Color.fromARGB(255, 15, 108, 184),
        actions: const [
          IconButton(onPressed: null, 
          icon: Icon(Icons.done, color: Colors.white))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children:[
            SizedBox(height: gape+5,),
            const DataEntry(mainText: 'Supplier Name', hintText: 'Ex: Smith'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Company', hintText: 'Ex:Smith Co'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Address', hintText: 'Ex: 654 Jardon'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Contact No', hintText: '0323*******')
          ],),
        )
      ),
    );
  }
}

class DataEntry extends StatelessWidget{
  const DataEntry({
    super.key,
    required this.mainText,
    required this.hintText,
  });
  final String mainText;
  final String hintText;
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(mainText, style: mainTextStyle),
      SizedBox(
        height: 25,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ),
    ],);
  }
}