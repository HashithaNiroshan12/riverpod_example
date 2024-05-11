//reading provider for stateful widget

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>((ref)  {
  return "Hello Machan ";
});

class ReadingProvider extends ConsumerStatefulWidget {
  const ReadingProvider({super.key});

  @override
  _ReadingProviderState createState() => _ReadingProviderState();
}


class _ReadingProviderState extends ConsumerState<ReadingProvider> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final name = ref.read(nameProvider);
    print(name);
  }
  
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("staful provider"),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}