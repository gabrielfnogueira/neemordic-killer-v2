export function routerConfig ($stateProvider, $urlRouterProvider) {
  'ngInject';
  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'app/main/main.html',
      controller: 'MainController',
      controllerAs: 'main'
    })
    .state('about', {
      url: '/about',
      templateUrl: 'app/main/about.html',
      controller: 'AboutController',
      controllerAs: 'aboutCtrl'
    })
    .state('groups', {
      url: '/groups',
      templateUrl: 'app/components/groups.html',
      controller: 'GroupsController',
      controllerAs: 'groupsCtrl',
        resolve: {
            groupPromise: ['GroupsFactory', function(GroupsFactory){
                GroupsFactory.getAll();
            }]
        }
    })
    .state('group', {
      url: '/groups/{id}',
      templateUrl: 'app/components/groupsView.html',
      controller: 'GroupsViewController',
      controllerAs: 'groupsViewCtrl',
        resolve: {
            group: ['$stateParams', 'GroupsFactory', function($stateParams, GroupsFactory){
                return GroupsFactory.get($stateParams.id);
            }]
        }
    });

  $urlRouterProvider.otherwise('/');
}
