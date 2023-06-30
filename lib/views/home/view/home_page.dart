import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vending_machine/core/navigations/default_navigation_service.dart';
import 'package:vending_machine/views/home/cubit/home_cubit.dart';
import 'package:vending_machine/widgets/buttons/machine_select_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(context, DefaultNavigationService(context)),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a machine'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: MachineSelectButton(
              text: "Hot Beverage",
              onPressed: context.read<HomeCubit>().openHotBeverage,
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: MachineSelectButton(
              text: "Cold Beverage",
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: MachineSelectButton(
              text: "Snack Machine",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
