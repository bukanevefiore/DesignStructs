import 'package:flutter/material.dart';

class AramaSayfasi extends StatelessWidget {

  AramaSayfasi(Key k) : super(key:k);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: 'Raleway'
      ),
      child: Container(
        color: Colors.teal,
        child: Center(
          child:ListView.builder(
              itemExtent: 200,
              itemBuilder: (context, index) {

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(5),
                color: index % 2 == 0 ? Colors.orange : Colors.yellow,
                child: Center(
                  child: Text(index.toString(),style: TextStyle(fontSize: 24),),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
