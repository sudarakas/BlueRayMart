/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){
    
    
    $scope.refreshCart = function (cartId){
         $http.get("/rest/cart/"+$scope.cartId).success(function (data){
             $scope.cart=data;
         });
    };
    
    $scope.clearCart = function (){
        $http.delete("/rest/cart/"+$scope.cartId).success($scope.refreshCart($scope.cartId));
    }
    
    $scope.initCartId = function (cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };
    
    $scope.addToCart = function (movieId){
        $http.put("/rest/cart/add/"+movieId).success(function (data){
             //$scope.refreshCart($http.get("/rest/cart/cartId"));
//             alert("Movie successfully add to the cart");
                window.open('/cart')
         });
    };
    
    $scope.removeFromCart = function (movieId){
        $http.put("/rest/cart/remove/"+movieId).success(function (data){
             $scope.refreshCart($http.get("/rest/cart/cartId"));
             //alert("Movie successfully add to the cart")
         });
    };
});