import 'package:flutter/material.dart';

class Sac extends StatefulWidget {
  const Sac({ Key? key }) : super(key: key);

  @override
  _SacState createState() => _SacState();
}

class _SacState extends State<Sac> {
  String url='https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg';
  
  @override
  Widget build(BuildContext context) {
    Size deviceSize =MediaQuery.of(context).size;
    return Scaffold(
      
      appBar: AppBar(title:Text('HELLO')),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                // shape:BoxShape.circle,
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20),
                // ),
                border: Border.all(
                color: Colors.green,
                width: 4
                  ),
                
                
                image: DecorationImage(image:NetworkImage(url) ,
                
                fit:BoxFit.fill
                
                ),
              ),
              width: deviceSize.width,
              height: 200,
              
              ))
        ],
      ),
    );
  }
}