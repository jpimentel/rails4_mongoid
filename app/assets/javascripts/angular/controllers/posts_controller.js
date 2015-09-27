myApp.factory('Posts', ['$resource',function($resource){
    return $resource('/posts.json', {},{
        query: { method: 'GET', isArray: true },
    })
}]);

myApp.factory('Post', ['$resource', function($resource){
    return $resource('/posts/:id.json', {}, {
        delete: { method: 'DELETE', params: {id: '@id'} }
    });
}]);

myApp.controller("PostListCtrl", ['$scope', '$resource', 'Posts', 'Post', '$location', function($scope, $resource, Posts, Post, $location) {
    $scope.posts = Posts.query();

    $scope.deletePost = function (postId) {
        if (confirm("Are you sure you want to delete this post?")){
            Post.delete({ id: postId }, function(){
                $scope.posts = Posts.query();
            });
        }
    };
}]);