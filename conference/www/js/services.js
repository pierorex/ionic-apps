angular.module('starter.services', ['ngResource'])

.factory('Session', function ($resource) {
    return $resource('https://ionic-pierorex.c9users.io/sessions/:sessionId');
});