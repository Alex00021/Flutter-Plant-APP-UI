import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_plant_ui/components/my_bottom_nav_bar.dart';
import '../../constants.dart';
import 'components/featurred_plants.dart';
import 'components/header_with_seachbox.dart';
import 'components/recomend_plants.dart';
import 'components/title_with_more_bbtn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: getBody(context),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {
          ///TODO
        },
      ),
    );
  }

  Widget getBody(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          // const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
