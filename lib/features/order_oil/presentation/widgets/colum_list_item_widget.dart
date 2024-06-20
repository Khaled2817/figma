import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/features/order_oil/presentation/provider/orders_provider_oil.dart';
import 'package:untitled/features/order_oil/presentation/widgets/container_itme_details_widget.dart';

class ColumListItemWidget extends StatelessWidget {
  const ColumListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<OrdersProviderOil>(context);
    return Column(
      children: [
        ...List.generate(
            myprovider.OrderModelDetailList.length,
            growable: true,
            (index) => ContainerItmeDetailsWidget(
                  index: index,
                ))
      ],
    );
  }
}
