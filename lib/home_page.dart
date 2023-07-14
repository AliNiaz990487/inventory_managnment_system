import 'package:flutter/material.dart';
import 'package:inventory_managnment_system/add_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final double gape = 8;
  final TextStyle mainTextStyle = const TextStyle(color: Colors.white, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Expanded(
                child: HomePageCard(
              widget: Text('Place something'),
              border: true,
              shadow: true,
              backgroundColor: Colors.white,
            )),
            SizedBox(
              height: gape*2,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: HomePageCard(
                    widget: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset('assets/delivery.png', color: Colors.white),
                        ),
                        SizedBox(height: gape),
                        Expanded(child: Text('Product List', style: mainTextStyle)),
                      ],
                    ),
                  )),
                  SizedBox(width: gape),
                  Expanded(
                    child: InkWell(
                      onTap:() => Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => 
                        AddProduct(),)
                      ),
                      child: HomePageCard(
                      widget: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset('assets/delivery.png', color: Colors.white),
                          ),
                          SizedBox(height: gape),
                          Expanded(child: Text('Add Product', style: mainTextStyle)),
                        ],
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: gape,
            ),
            Expanded(
                child: HomePageCard(
              widget: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset('assets/delivery.png', color: Colors.white),
                        ),
                        SizedBox(height: gape),
                        Expanded(child: Text('Product List', style: mainTextStyle)),
                      ],
                    ),
            )),
            SizedBox(
              height: gape,
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(child: HomePageCard(widget: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset('assets/delivery.png', color: Colors.white),
                        ),
                        SizedBox(height: gape),
                        Expanded(child: Text('Product List', style: mainTextStyle)),
                      ],
                    ),)),
                SizedBox(width: gape),
                Expanded(child: HomePageCard(widget: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset('assets/delivery.png', color: Colors.white),
                        ),
                        SizedBox(height: gape),
                        Expanded(child: Text('Product List', style: mainTextStyle)),
                      ],
                    ),))
              ],
            )),
          ],
        ));
  }
}

class HomePageCard extends StatelessWidget {
  const HomePageCard(
      {super.key,
      required this.widget,
      this.backgroundColor = const Color.fromARGB(255, 15, 108, 184),
      this.shadow = false,
      this.border = false,
      this.borderRadius = 5});

  final Widget widget;
  final Color backgroundColor;
  final bool shadow;
  final bool border;
  final int borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: border ? Border.all(color: const Color.fromARGB(255, 241, 241, 241), width: 2) : null,
          borderRadius: BorderRadius.circular(5),
          color: backgroundColor,
          boxShadow: shadow
              ? const [
                  BoxShadow(blurRadius: 6),
                ]
              : null),
      alignment: Alignment.center,
      child: widget,
    );
  }
}
