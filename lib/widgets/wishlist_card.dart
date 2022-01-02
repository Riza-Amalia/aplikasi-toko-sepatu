import 'package:aplikasi_toko_sepatu/model/product_model.dart';
import 'package:aplikasi_toko_sepatu/provider/wishlist_provider.dart';
import 'package:aplikasi_toko_sepatu/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WishCard extends StatelessWidget {
  final ProductModel product;
  WishCard(this.product);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoe9.png',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/button_wishlist_blue.png',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
