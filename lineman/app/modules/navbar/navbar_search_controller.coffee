angular.module('loomioApp').controller 'NavbarSearchController', ($scope, UserAuthService, Records, SearchResultModel) ->
  $scope.searchResults = []
  $scope.searching = false

  $scope.noResultsFound = ->
    !$scope.searching && $scope.searchResults.length == 0

  $scope.availableGroups = ->
    UserAuthService.currentUser.groups() if UserAuthService.currentUser?

  $scope.getSearchResults = (query) ->
    if query?
      $scope.searching = true
      Records.search_results.fetchByFragment($scope.query).then (response) ->
        $scope.searchResults = _.map response.search_results, (result) ->
          Records.search_results.initialize result
        $scope.searching = false
