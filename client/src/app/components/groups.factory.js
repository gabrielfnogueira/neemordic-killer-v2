export class GroupsFactory {
  constructor ($http) {
    'ngInject';

    let o = {
      groups: [],
      getAll: function() {
        let that = this;
        return $http.get('/api/groups').success(function(data){
          angular.copy(data, that.groups);
        });
      },
      get: function(id) {
        return $http.get('/api/groups/' + id + '').then(function(res){
          return res.data;
        });
      }
    };

    return o;
  }
}
