import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(model.declaration),
                ElevatedButton(
                    onPressed: () => model.update(),
                    child: const Text("Update")),
                ElevatedButton(
                    onPressed: () => model.navigateToProfileView(),
                    child: const Text("Goto Profile")),
              ],
            ),
          ),
        );
      },
    );
  }
}
