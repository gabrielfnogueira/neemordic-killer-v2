export class GroupsController {
  constructor ($scope, GroupsFactory) {
    'ngInject';

    $scope.groups = GroupsFactory.groups;
  }
}