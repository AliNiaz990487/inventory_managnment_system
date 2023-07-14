import 'package:flutter/material.dart';
const TextStyle mainTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold
);
class AddProduct extends StatelessWidget{
  const AddProduct({super.key});
  final double gape = 10;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"), 
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
            SizedBox(height: gape*2,),
            const PickImage(),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Product Name', hintText: 'Ex: Pen'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Product Price', hintText: 'Ex:4.50'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Quantity', hintText: 'Ex: 5'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Data', hintText: 'Tap to Select'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Supplier', hintText: 'Ex: Ali Niaz'),
            SizedBox(height: gape,),
            const DataEntry(mainText: 'Description', hintText: 'Wx: Blue Pen')
          ],),
        )
      ),
    );
  }
}

class PickImage extends StatefulWidget {
  const PickImage({super.key});

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3)
        ]
      ),
      alignment: Alignment.center,
      child: Column(
        children: const [
          SizedBox(height: 15,),
          Image(
            width: 80, 
            height: 80,
            image: AssetImage('assets/Camera.png')),
          Text('ADD IMAGE', style: mainTextStyle)
        ],
      )
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
        height: 23,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ),
    ],);
  }
}