import '../cart_one_screen/widgets/productdefaultgrid_item_widget.dart';
import 'bloc/cart_one_bloc.dart';
import 'models/cart_one_model.dart';
import 'models/productdefaultgrid_item_model.dart';
import 'package:ajestores/core/app_export.dart';
import 'package:ajestores/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class CartOneScreen extends StatelessWidget {
  const CartOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CartOneBloc>(
      create: (context) => CartOneBloc(CartOneState(
        cartOneModelObj: CartOneModel(),
      ))
        ..add(CartOneInitialEvent()),
      child: CartOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 77.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27.h),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 15.h,
                          ),
                          child: BlocSelector<CartOneBloc, CartOneState,
                              TextEditingController?>(
                            selector: (state) => state.searchController,
                            builder: (context, searchController) {
                              return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_ear_pods".tr,
                                borderDecoration:
                                    SearchViewStyleHelper.fillGray,
                                fillColor: appTheme.gray200,
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 42.v),
                        _buildProductDefaultGrid(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDefaultGrid(BuildContext context) {
    return BlocSelector<CartOneBloc, CartOneState, CartOneModel?>(
      selector: (state) => state.cartOneModelObj,
      builder: (context, cartOneModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 234.v,
            crossAxisCount: 2,
            mainAxisSpacing: 12.h,
            crossAxisSpacing: 12.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: cartOneModelObj?.productdefaultgridItemList.length ?? 0,
          itemBuilder: (context, index) {
            ProductdefaultgridItemModel model =
                cartOneModelObj?.productdefaultgridItemList[index] ??
                    ProductdefaultgridItemModel();
            return ProductdefaultgridItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
