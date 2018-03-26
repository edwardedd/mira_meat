// var mixer = mixitup('.all-filters-elements', {
//     selectors: {
//         target: '.all-filters-elements .mix'
//     },
//     animation: {
//         duration: 300
//     }
// });

// $(document).ready(function() {
//     $('#filter-box').mixItUp({
//         callbacks: {
//             onMixLoad: function(state, futureState) {
//                 $('.one-box-container.mix').addClass('display-none')
//             }
//         }
//     });
// });


// $(document).ready(function() {
//     $('.mix-container').mixItUp({
//         callbacks: {
//             onMixLoad: function(state, futureState) {
//                 $('.mix-container .mix').addClass('display-none')
//             }
//         }
//     });
// });


$(document).ready(function(){
  var $filterSelect = $('.FilterSelect'),
      $sortSelect = $('.SortSelect'),
      $container = $('.mix-container');
  
  $container.mixItUp({
        callbacks: {
            onMixLoad: function(state, futureState) {
                $('.mix-container .mix').addClass('display-none')
            }
        }
    });
  
  $filterSelect.on('change', function(){
    $container.mixItUp('filter', this.value);
  });
  
  $sortSelect.on('change', function(){
    $container.mixItUp('sort', this.value);
  });
});


// var mixer = mixitup('.all-filters-elements')
// mixer.filter('.category-a');