import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_app/presentation/blocs/notification/notifications_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
            (NotificationsBloc bloc) => Text('${bloc.state.status}') 
        ),
        actions: [
          IconButton(onPressed: () {
            context.read<NotificationsBloc>().requestPermission();
          }, icon: const Icon(Icons.settings)),
        ],
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 0,
      itemBuilder: (BuildContext context, int index) {
        return const ListTile();
      },
    );
  }
}
