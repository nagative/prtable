$(function(){

var company_search = $('.results-lists')

function appendUser(user) {
  var html = `<li class='results-list'>
                <a class='results-link' href='/'>
                  <figure class='list-icon'>
                    <img src='/assets/${user.company_logo}' class='img-icon'>
                    </div>
                    <figcaption class='company-icon'>
                    ${user.name}
                    </figcaption>
                  </figure>
                </a>
              </li>`
  company_search.append(html);
}

function appendNoUser(user) {
  var html = `<li class='results-list'>
                <div class='results-link'>${ user }</div>
              </li>`
  company_search.append(html);
}

  $('.search__form-input').on('keyup', function(){
    var input = $('.search__form-input').val();
    console.log(input);
    if (!$(this).val()){
    console.log('true');
      $('.search__form-results').hide();
    }
    else {
    console.log('false');
      $('.search__form-results').show();
    }
      $.ajax({
        type: 'GET',
        url: '/users/',
        data: { keyword: input },
        dataType: 'json'
      })

      .done(function(users){
        $('.results-lists').empty();
        if (users.length !== 0){
          users.forEach(function(user){
            appendUser(user);
          });
        }
        else {
          appendNoUser('一致する企業はありません');
        }
      })
      .fail(function() {
        alert('検索に失敗しました');
      });
  });
});
