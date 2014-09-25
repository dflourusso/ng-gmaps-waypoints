ng-gmaps-waypoints
==================

AngularJs Google Maps com rotas exibindo rota múltiplos pontos

#### Instalação - Using Bower
    bower install dflourusso/ng-gmaps-waypoints


#### Get Started

Inclua em seu index o plugin do google para o mapa

	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
	
Inclua em seu index o **angular**, o **jquery** e os componentes **gmaps-waypoints** e **ng-gmaps-waypoints**

	<script src="bower_components/angular/angular.js"></script>
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="bower_components/gmaps-waypoints/dist/gmaps-waypoints.js"></script>
	<script src="bower_components/ng-gmaps-waypoints/dist/ng-gmaps-waypoints.js"></script>
	
#### Drawing the Map

##### 1 Inclua uma div contendo a tag <u>ng-gmaps-waypoints</u> e as demais tags especificadas abaixo:



	<div ng-gmaps-waypoints options="options" origin="origin" locations="locations" destination="destination"></div>
	
Obs: *É necessário que esta div esteja dentro de outro elemento com **height** e **width** especificados pois ela se ajusta a 100% do pai.*

##### 2 Crie seu módulo angular.

 * Inclua o plugin **ng-gmaps-waypoints** 
 * Preencha as variáveis das tags exemplificadas no item 1 e o mapa já poderá ser visualizado.

Informações a serem atribuídas às tags:
> * **options**: Opções de configuração inicial do mapa. (Latitude, longitude, zoom,  travelMode)
> * **origin**: Objeto com Latitude e Longitude inicial da rota.
> * **locations**: Array contendo os pontos de parada da rota.
> * **destination**: Objeto com Latitude e Longitude final da rota.

Exemplo:

	angular.module('MyApp', ['ng-gmaps-waypoints']).controller 'myCustomMap', ($scope)->
		$scope.options = {latitude: -23.426868, longitude: -51.9308231}
	 	$scope.origin = {latitude: -23.426868, longitude: -51.9308231}
	 	$scope.locations = [
    			'Rua Itamar Orlando Soares',
    			{latitude: -23.428239, longitude: -51.9728931},
    			'Av. Das Grevíleas',
    			'Av. Pintassilgo'
    		]
	 	$scope.destination = {latitude: -23.426868, longitude: -51.9408231}     
	 	
##### Veja um [exemplo](http://jsbin.com/xuyoda/2) em funcionamento.