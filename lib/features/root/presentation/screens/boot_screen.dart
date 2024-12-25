import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/services/router/router_service.gr.dart';

@RoutePage()
class BootScreen extends StatefulWidget {
  const BootScreen({super.key});

  @override
  State<BootScreen> createState() => _BootScreenState();
}

class _BootScreenState extends State<BootScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(milliseconds: 500), () {
      if (!mounted) return;
      context.router.replace(const RootRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VOCAPP-Boot')),
    );
  }
}
