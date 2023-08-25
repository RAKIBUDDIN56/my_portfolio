import 'package:flutter/material.dart';

import '../../../app/configs.dart';
import '../../../core/utils/ScreenUiHelper.dart';
import '../../widgets/grid_view_widget.dart';
import 'project_view_model.dart';

class ProjectResponsiveView extends StatelessWidget {
  final ScreenUiHelper? uiHelpers;
  final ProjectViewModel? model;

  const ProjectResponsiveView({Key? key, this.uiHelpers, this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uiHelpers!.backgroundColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              uiHelpers!.verticalSpaceHigh,
              Text('Some Things I’ve Built', style: uiHelpers!.headline),
              SizedBox(
                width: uiHelpers!.width! * 0.25,
                child: Divider(
                  color: uiHelpers!.dividerColor,
                  thickness: 2.5,
                ),
              ),
              uiHelpers!.verticalSpaceHigh,
            
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          child: ResponsiveGridRow(
                        children: model!.getProjects(),
                      )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
