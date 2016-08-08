$(document).ready(function() {
  var $results = $('.results');

  function readPosts() {
    var getRequest = $.ajax(
      'http://localhost:3000/posts?_sort=id&_order=DESC'
    );

    getRequest.done(function(data, status, xhr) {
      console.log(data, status, xhr);
      output(data);
    });

    getRequest.fail(function(data) {
      showNotification('error', 'GET error!');
    });
  }

  function deletePost(id) {
    var getRequest = $.ajax({
      url: 'http://localhost:3000/posts/' + id,
      method: 'delete',
    });

    getRequest.done(function(data, status, xhr) {
      showNotification('success', 'DELETE success!');
      readPosts();
    });

    getRequest.fail(function(data) {
      showNotification('error', 'DELETE error!');
    });
  }

  function showNotification(type, message) {
    $('<div class="notification">')
      .addClass(type)
      .text(message)
      .hide()
      .prependTo('body')
      .slideDown()
      .delay(2000)
      .slideUp(200, function() {
        $(this).remove();
      })
  }

  function output(data) {
    var results = [];
    $results.empty();

    // $results.find('li').fadeOut(200, function() { $(this).remove(); });

    if (jQuery.isPlainObject(data)) {
      results.push(data);
    } else {
      results = data;
    }

    results.forEach(function(item, i) {
      var $li = $('<li>').data('id', item.id);
      var htmlStr = '';

      Object.keys(item).forEach(function(key) {
        htmlStr += `<strong>${key}</strong> : `;
        htmlStr += `${item[key]}<br>`;
      });

      $li
        .html(htmlStr)
        .appendTo($results);
    });
  }

  readPosts();

  $('form').on('submit', function(e) {
    e.preventDefault();
    var sendRequest = $.ajax({
      url: 'http://localhost:3000/posts',
      method: 'post',
      data: $( this ).serialize(),
    });

    sendRequest.done(function() {
      showNotification('success', 'posted!');
      readPosts();
    });

    sendRequest.fail(function() {
      showNotification('error', 'POST error!');
    });
  });

  $results.on('click', 'li', function(e) {
    var id = $(this).data('id');

    if (confirm('Are you sure? [#' + id + ']')) {
      deletePost(id);
    }
  });
});
