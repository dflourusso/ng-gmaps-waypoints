angular.module('ng-gmaps-waypoints', [])
.directive 'ngGmapsWaypoints', ->
  restrict: 'A'
  scope:
    options: '=?'
    origin: '=?'
    locations: '=?'
    destination: '=?'
  template: '<div id="map-canvas"></div>'
  link: (scope, element)->
    gm = new GmapsWaypoints element[0], scope.options
    gm.initialize()
    scope.$watch 'locations', (locations)->
      gm.calcRoute scope.origin, scope.locations, scope.destination
