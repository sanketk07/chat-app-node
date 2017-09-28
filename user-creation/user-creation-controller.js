(function(window, angular, undefined){
	angular.module('chatApp')
	.controller("userCreationCtrl", ['$scope', function($scope){
		var vm = this;
		vm.test = "testing user creation";
	}])
})(window, window.angular);