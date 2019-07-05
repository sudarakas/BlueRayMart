/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http) {


    $scope.refreshCart = function () {
        $http.get("/rest/cart/" + $scope.cartId).success(function (data) {
            $scope.cart = data;
        });
    };

    $scope.clearCart = function () {
        $http.delete("/rest/cart/" + $scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (movieId){
        $http.put("/rest/cart/add/"+movieId).success(function(){
             alert("Movie successfully add to the cart");
         });
    };


    $scope.removeFromCart = function (movieId) {
        $http.put("/rest/cart/remove/" + movieId).success(function (data) {
            $scope.refreshCart();
        });
    };

    $scope.returnSubTotal = function () {
        var subTotal = 0;
        for (var i = 0; i < $scope.cart.cartItems.length; i++) {
            subTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return subTotal;
    };
});