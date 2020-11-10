part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Food Market',
                        style: blackFontStyle1,
                      ),
                      Text("Let's get some food",
                          style: greyFontStyle.copyWith(
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/9/99/Jennie_Kim_for_Marie_Claire_Korea_Magazine_on_October_9%2C_2018_%285%29.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),

            /// LIST OF FOOD
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  left: (e == mockFoods.first)
                                      ? defaultMargin
                                      : 0,
                                  right: defaultMargin),
                              child: FoodCard(e),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),

            /// LIST OF FOOD (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['New Taste', 'Popular', 'Recomendded'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Builder(builder: (_) {
              List<Food> foods = (selectedIndex == 0)
                  ? mockFoods
                  : (selectedIndex == 1)
                      ? []
                      : [];

              return Column(
                children: foods
                    .map((e) => Padding(
                          padding: EdgeInsets.fromLTRB(
                              defaultMargin, 0, defaultMargin, 16),
                          child: FoodListItem(
                            food: e,
                            itemWidth: listItemWidth,
                          ),
                        ))
                    .toList(),
              );
            }),
            SizedBox(
              height: 80,
            )
          ],
        )
      ],
    );
  }
}
