import 'package:flutter/material.dart';

import '../widgets/empty_list.dart';


extension ListViewExtension<T> on List<T> {
  Widget buildListView({
    required Widget Function(BuildContext, int) itemBuilder,
    ScrollController? controller,
    required Function onRefresh,
    Axis scrollDirection = Axis.vertical,
    ScrollPhysics? physics = const AlwaysScrollableScrollPhysics(),
    String image = "assets/images/empty_list.png",
    String description = "Aucun donnée.",
  }) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
      },
      child: isEmpty
          ? EmptyListWidget(
        image: image,
        description: description,
      )
          : ListView.builder(
        controller: controller,
        shrinkWrap: true,
        scrollDirection: scrollDirection,
        physics: physics,
        itemCount: length,
        itemBuilder: itemBuilder,
      ),
    );
  }
}




