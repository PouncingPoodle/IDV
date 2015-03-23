
(function () {
    var app = angular.module('lib', []);
    
    app.controller('HomeController', function() { });

    app.controller('PanelController', function()
    {
        this.tab = 0;
        this.changeTab = function(newTab)
        {
            this.tab = newTab;
        };
        this.isActive = function(argTab)
        {
            return this.tab === argTab;
        };
    });
    
    app.controller('BooksController', ["$http", function($http) 
    {
        var storage = this;
        
        $http.get("http://localhost/idvProject_130002/scripts/dbcon.php/book").success(function(data)
        {
            storage.info = data;
        });
        
    }]);

    app.controller('FilterController', function() 
    {
        
        this.filter = "";
        this.isGenre = function(genre) {
            if (this.filter === "All")
            {
                return this.filter;
            }
            return this.filter === genre;
        };
        
        this.recentF = "1";
        this.isRecent = function(recent){
            if (this.recentF !== "1")
            {
                return this.recentF;
            }
            return this.recentF === recent;
        };
        
        this.recommendF = "1";
        this.isRecommend = function(recommend) {
            if (this.recommendF !== "1")
            {
                return this.recommendF;
            }
            return this.recommendF === recommend;
        };
        
    }); 
    
    
})();
