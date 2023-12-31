import 'package:flutter/material.dart';
import '../../../../../core/utilles/styles.dart';
import 'best_seller_list_view_Bloc_Builder.dart';
import 'custom_app_bar.dart';
import 'featured_books_listview_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: CustomAppBar()),
              FeaturedBooksListViewBlocBuilder(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Newest Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
         const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListViewBlocBuilder(),
          ),
        ),
      ],
    );
  }
}


