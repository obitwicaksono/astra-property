import 'package:flutter/material.dart';
import 'package:astra_property/models/list_property.dart';
import 'package:astra_property/widgets/list_prop.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<ListPropertyModel> listProperty =
      ListPropertyModel.getListProperty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Astra Property',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.home_work_outlined, size: 30),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'List Top Rated Property',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                  itemCount: listProperty.length,
                  itemBuilder: (context, index) {
                    return ListProp(
                      list: listProperty[index],
                      onTap: () => context.go(
                        '/property/${listProperty[index].id}',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
