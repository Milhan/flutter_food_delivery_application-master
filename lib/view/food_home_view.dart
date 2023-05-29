import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_application/const/food_const.dart';

class HomeFoodView extends StatefulWidget {
  const HomeFoodView({super.key});

  @override
  State<HomeFoodView> createState() => _HomeFoodViewState();
}

class _HomeFoodViewState extends State<HomeFoodView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: FoodConst().edgeInsetsSymetricVertical60,
      child: Scaffold(
        floatingActionButton: const _containerFloating(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: FoodConst().appBarBackGroundColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FoodConst().appTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.lightGreenAccent[400]),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.black,
                              ),
                              label: Text(
                                '1',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(fontSize: 16),
                              fillColor: Colors.grey,
                              filled: true,
                              hintText: FoodConst().searchText,
                              prefixIcon: const Icon(Icons.search, size: 30),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              flex: 8,
              child: Padding(
                padding: FoodConst().edgeInsetsOnlyLeftRight7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _RowTextTitle(
                        title: FoodConst().repeatTitle,
                        icon: const Icon(Icons.restore, size: 30),
                      ),
                      const Divider(),
                      _RowTextTitle(
                        title: FoodConst().helpTitle,
                        icon: const Icon(Icons.crop, size: 30),
                      ),
                      const Divider(),
                      _RowTextTitle(
                        title: FoodConst().surpriseTitle,
                        icon: const Icon(Icons.crisis_alert_rounded, size: 30),
                      ),
                      FoodConst().sizedBoxHeight20,
                      const RowCategoriesTitle(title: 'Top Categories'),
                      const SizedBox(height: 10),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CategoriesContainer(title: 'Vegan'),
                            CategoriesContainer(title: 'Vegan'),
                            CategoriesContainer(title: 'Vegan'),
                            CategoriesContainer(title: 'Vegan'),
                            CategoriesContainer(title: 'Vegan'),
                            CategoriesContainer(title: 'Vegan'),
                            CategoriesContainer(title: 'Vegan'),
                            CategoriesContainer(title: 'Vegan'),
                          ],
                        ),
                      ),
                      FoodConst().sizedBoxHeight20,
                      const RowCategoriesTitle(title: 'Recommended'),
                      FoodConst().sizedBoxHeight10,
                      Column(
                        children: [
                          Row(
                            children: [
                              const CardDesing(),
                              FoodConst().sizedBoxWidht10,
                              const CardDesing(),
                            ],
                          ),
                          FoodConst().sizedBoxHeight10,
                          Row(
                            children: [
                              const CardDesing(),
                              FoodConst().sizedBoxWidht10,
                              const CardDesing(),
                            ],
                          ),
                          FoodConst().sizedBoxHeight10,
                          Row(
                            children: [
                              const CardDesing(),
                              FoodConst().sizedBoxWidht10,
                              const CardDesing(),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardDesing extends StatelessWidget {
  const CardDesing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 170,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2, top: 10),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2mW-g6wUzRfwevoxdZ_NzW1MMBhZd0F-WbQ&usqp=CAU',
              ),
            ),
            Text(
              'The Kitchen - Quinoa',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              '20 TL',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 50,
        width: 90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.only(left: 7, right: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.add_link_outlined,
              color: Colors.lightGreenAccent[400],
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class RowCategoriesTitle extends StatelessWidget {
  const RowCategoriesTitle({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              'View All',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
            const Icon(Icons.arrow_right_alt)
          ],
        )
      ],
    );
  }
}

class _containerFloating extends StatelessWidget {
  const _containerFloating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {},
          child: Text(
            'Check out 2 products',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),
          )),
    );
  }
}

class _RowTextTitle extends StatelessWidget {
  const _RowTextTitle({
    required this.title,
    required this.icon,
  });

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        FoodConst().sizedBoxWidht10,
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}
