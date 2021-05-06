//stls kısayol

import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  final _appBarTitle = ' Istagram';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          // ekranı ögelerine eşit boler
          Expanded(
            flex: 2,
            child: buildListViewTab(context),
          ),
          Expanded(
            flex: 2,
            child: buildListView(),
          ),
          Expanded(flex: 1, child: buildDismissibleBottomCard())
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // appbar rın sol tarafı
      actions: [buildActionsIconButton(context)],
      centerTitle: false, // sagda olamasını sağlıuypruz
      backgroundColor: Colors.teal,
      title: buildAppBarTitle(context),
    );
  }

  IconButton buildActionsIconButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Column(),
        );
      },
    );
  }

  Row buildAppBarTitle(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.flight_takeoff),
        Text(
          _appBarTitle,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ],
    );
  }

  ListView buildListViewTab(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height + 0.1,
          width: 500,
          color: Colors.green.shade200,
        ),
      ],
    );
  }

  ListView buildListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal, // yatay olarak sıralama
      itemCount: 100,
      itemBuilder: (context, index) {
        return buildSizedBox(context);
      },
    );
  }

  SizedBox buildSizedBox(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width + 0.8,
      height: MediaQuery.of(context).size.height + 0.2,
      child: Card(
        child: ListTile(
          onTap: () {},
          leading: Icon(
            Icons.face, // sol taraf
          ),
          trailing: Icon(Icons.add),
        ),
      ),
    );
  }

  Dismissible buildDismissibleBottomCard() {
    return Dismissible(
      key: UniqueKey(),
      background: Container(color: Colors.teal),
      secondaryBackground: Container(color: Colors.pink),
      child: buildContainerBottom(),
    );
  }

  Container buildContainerBottom() {
    return Container(
      color: Colors.pink.shade200,
    );
  }
}
