export class GroupsFactory {
  constructor ($http) {
    'ngInject';

    let o = {
      groups: [],
      getAll: function() {
        let that = this;
        return $http.get('/api/groups.json').success(function(data){
          angular.copy(data, that.groups);
        });
      }
    };

    return o;
  }
}
