import '/cartpage/cart_item/cart_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_list_model.dart';
export 'cart_list_model.dart';

class CartListWidget extends StatefulWidget {
  const CartListWidget({Key? key}) : super(key: key);

  @override
  _CartListWidgetState createState() => _CartListWidgetState();
}

class _CartListWidgetState extends State<CartListWidget> {
  late CartListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final cartList = FFAppState().cartList.map((e) => e).toList();
        return ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: cartList.length,
          separatorBuilder: (_, __) => SizedBox(height: 10.0),
          itemBuilder: (context, cartListIndex) {
            final cartListItem = cartList[cartListIndex];
            return wrapWithModel(
              model: _model.cartItemModels.getModel(
                cartListIndex.toString(),
                cartListIndex,
              ),
              updateCallback: () => setState(() {}),
              child: CartItemWidget(
                key: Key(
                  'Keyn4u_${cartListIndex.toString()}',
                ),
                img: valueOrDefault<String>(
                  cartListItem.img,
                  'https://wellbeloved.com/cdn/shop/products/5025838042034_T14a_394x.png?v=1681890909',
                ),
                title: valueOrDefault<String>(
                  cartListItem.title,
                  'title',
                ),
                price: valueOrDefault<double>(
                  cartListItem.price,
                  0.0,
                ),
                quantity: valueOrDefault<int>(
                  cartListItem.quantity,
                  1,
                ),
                indexAt: cartListIndex,
              ),
            );
          },
        );
      },
    );
  }
}
