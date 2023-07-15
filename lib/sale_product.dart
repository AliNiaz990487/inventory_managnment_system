import 'package:flutter/material.dart';

const TextStyle mainTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold);
class SaleProduct extends StatelessWidget{
  const SaleProduct({super.key});
  final double gape = 30;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale Product"), 
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
            const DataEntry(mainText: 'Product Name', hintText: 'Ex: Pen'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Product Price', hintText: 'Ex:4.50'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Quantity', hintText: 'Ex: 5'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Date', hintText: 'Tap to Select'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Customer Name', hintText: 'Ex: Ali Niaz'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Customer Contact', hintText: '0323*******')
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