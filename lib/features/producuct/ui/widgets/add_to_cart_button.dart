import 'package:flutter/material.dart';
class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          minimumSize: Size(double.infinity,50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Product added to cart")));
        }, child:Text("Add to cart"));
  }
}