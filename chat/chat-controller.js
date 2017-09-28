(function(window, angular, undefined){
	angular.module('chatApp')
	.controller("chatCtrl", ['$scope', function($scope){
		var vm = this;
		vm.test = "testing chat";
	}])
})(window, window.angular);