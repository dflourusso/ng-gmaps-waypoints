angular.module('custom-map', ['ng-gmaps-waypoints'])
.controller 'customMapExample', ($scope)->
  $scope.options = {latitude: -23.426868, longitude: -51.9308231}
  $scope.origin = {latitude: -23.426868, longitude: -51.9308231}
  $scope.locations = [
    'Rua Itamar Orlando Soares',
    {latitude: -23.428239, longitude: -51.9728931},
    'Av. Das Grevíleas',
    'Av. Pintassilgo'
  ]
  $scope.destination = {latitude: -23.426868, longitude: -51.9408231}

  $scope.changeRoutes = ->
    $scope.locations = [
      "-23.#{$scope.randomic(468239, 368239)}, -51.#{$scope.randomic(9828931, 9028931)}",
      "-23.#{$scope.randomic(468239, 368239)}, -51.#{$scope.randomic(9828931, 9028931)}",
      "-23.#{$scope.randomic(468239, 368239)}, -51.#{$scope.randomic(9828931, 9028931)}",
      "-23.#{$scope.randomic(468239, 368239)}, -51.#{$scope.randomic(9828931, 9028931)}"
    ]

  $scope.randomic = (max, min) ->
    Math.floor(Math.random() * (max - min + 1)) + min