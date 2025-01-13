import 'package:flutter/material.dart';
import 'package:potfolio/portfolio/domain/entities/projects/projects_modal.dart';
import 'package:potfolio/portfolio/presentation/pages/projects/common/key_features_builder.dart';

class FrontendTechnologies extends StatelessWidget {
  const FrontendTechnologies(
      {super.key,
      this.keyFeaturesSize,
      this.bulletSize,
      this.bulletHeight,
      required this.projectsModal});

  final double? bulletSize;
  final double? bulletHeight;
  final double? keyFeaturesSize;
  final ProjectsModal projectsModal;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: projectsModal.frontEndTechnologies.length,
      itemBuilder: (context, index) {
        return KeyFeaturesItem(
          keyFeatureText: projectsModal.frontEndTechnologies[index],
          bulletHeight: bulletHeight,
          bulletSize: bulletSize,
          keyFeaturesSize: keyFeaturesSize,
        );
      },
    );
  }
}

class BackendTechnologies extends StatelessWidget {
  const BackendTechnologies(
      {super.key,
      this.keyFeaturesSize,
      this.bulletSize,
      this.bulletHeight,
      required this.projectsModal});

  final double? keyFeaturesSize;
  final double? bulletSize;
  final double? bulletHeight;
  final ProjectsModal projectsModal;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: projectsModal.backendTechnologiesUsed.length,
      itemBuilder: (context, index) {
        return KeyFeaturesItem(
          keyFeatureText: projectsModal.backendTechnologiesUsed[index],
          bulletHeight: bulletHeight,
          bulletSize: bulletSize,
          keyFeaturesSize: keyFeaturesSize,
        );
      },
    );
  }
}
