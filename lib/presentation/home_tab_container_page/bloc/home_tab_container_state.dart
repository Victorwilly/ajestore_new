// ignore_for_file: must_be_immutable

part of 'home_tab_container_bloc.dart';

/// Represents the state of HomeTabContainer in the application.
class HomeTabContainerState extends Equatable {
  HomeTabContainerState({
    this.searchController,
    this.homeTabContainerModelObj,
  });

  TextEditingController? searchController;

  HomeTabContainerModel? homeTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homeTabContainerModelObj,
      ];
  HomeTabContainerState copyWith({
    TextEditingController? searchController,
    HomeTabContainerModel? homeTabContainerModelObj,
  }) {
    return HomeTabContainerState(
      searchController: searchController ?? this.searchController,
      homeTabContainerModelObj:
          homeTabContainerModelObj ?? this.homeTabContainerModelObj,
    );
  }
}
