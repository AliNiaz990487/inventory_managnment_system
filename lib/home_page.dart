import 'package:flutter/material.dart';
import 'package:inventory_managnment_system/add_product.dart';
import 'package:inventory_managnment_system/product_list.dart';
import 'package:inventory_managnment_system/vendor_list.dart';

import 'add_vendor.dart';
import 'sale_product.dart';

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
                      child: InkWell(
                        onTap:() => Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => 
                        ProductList(),)
                      ),
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
                child: InkWell(
                  onTap:() => Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => 
                        SaleProduct(),)
                      ),
                  child: HomePageCard(
                              widget: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset('assets/delivery.png', color: Colors.white),
                          ),
                          SizedBox(height: gape),
                          Expanded(child: Text('Sale Product', style: mainTextStyle)),
                        ],
                      ),
                            ),
                )),
            SizedBox(
              height: gape,
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(child: InkWell(
                  onTap:() => Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => 
                        VendorList(),)
                      ),
                  child: HomePageCard(widget: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset('assets/delivery.png', color: Colors.white),
                          ),
                          SizedBox(height: gape),
                          Expanded(child: Text('Vendor List', style: mainTextStyle)),
                        ],
                      ),),
                )),
                SizedBox(width: gape),
                Expanded(child: InkWell(
                  onTap:() => Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => 
                        AddVendor(),)
                      ),
                  child: HomePageCard(widget: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset('assets/delivery.png', color: Colors.white),
                          ),
                          SizedBox(height: gape),
                          Expanded(child: Text('Add Vendor', style: mainTextStyle)),
                        ],
                      ),),
                ))
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
