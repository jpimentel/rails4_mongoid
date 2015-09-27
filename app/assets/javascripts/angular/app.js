var myApp = angular.module('myApp', ['ngResource', 'ui.bootstrap']);

myApp.config([
    '$httpProvider', function($httpProvider) {
        $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
    }
])

