angular.module('app', []);

angular.module('app').controller("MainController", function () {
    var vm = this;
    vm.searchInput = '';
    vm.shows = [

        {
            title: 'Họ nhà trai',
            author: 'Nguyễn Anh Tú',
            favorite: false
        },
        {
            title: 'Learn Angular by example',
            author: 'Fpt-Aptech',
            favorite: true
        },
        {
            title: 'Học code totay',
            author: 'Fpt',
            favorite: true
        },
        {
            title: 'Life of Pi',
            author: 'Devan',
            favorite: false
        },
        {
            title: 'Đôi mắt có lửa',
            author: 'Nguyễn Hồng Sơn',
            favorite: true
        }
    ];
    vm.orders = [
        {
            id: 1,
            title: 'Author Ascending',
            key: 'author',
            reverse: false
        },
        {
            id: 2,
            title: 'Author Descending',
            key: 'author',
            reverse: true
        },
        {
            id: 3,
            title: 'Title Ascending',
            key: 'title',
            reverse: false
        },
        {
            id: 4,
            title: 'Title Ascending',
            key: 'title',
            reverse: true
        }
    ];
    vm.order = vm.orders[0];
    vm.new = {};
    vm.addShow = function () {
        vm.shows.push(vm.new);
        vm.new = {};
    };
});