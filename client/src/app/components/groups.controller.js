export class GroupsController {
  constructor ($scope, GroupsFactory) {
    'ngInject';

    $scope.groups = GroupsFactory.groups;

    $scope.test = utils.removeAccents('coração de niños é avô');
  }
}