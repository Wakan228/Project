catigoriea = $('.hide_box').text();

  function updateURL(catigoriea,table,ASC) {
    if (history.pushState) {
        var baseUrl = window.location.protocol + "//" + window.location.host + window.location.pathname;
        var newUrl = baseUrl + '?catigories='+catigoriea+'&table='+table+'&ASC='+ASC;
        history.pushState(null, null, newUrl);
    }
    else {
        console.warn('History API не поддерживается');
    }
}

document.addEventListener('click', e => { 
      if(e.target.className === 'btn-buy'){
        $('#1').remove()
      name = e.target.dataset.name
      img = e.target.dataset.img
      prise = e.target.dataset.prise
      data = e.target.dataset.data
      $('.modal_box').append('<div id="1" class="modal"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">'+name+'</h4><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button></div><div class="modal-body"><img class="modal_img" src="../../assets/img/'+img+'"><div class="data">'+data+'</div><div class="prise">'+prise+'UA</div></div><div class="modal-footer"><button type="button" class="btn btn-primary">Купить</button><button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button></div></div></div></div>')
      $('#1').modal('show')
      }
    })

  $('.btn-catigories').on('click',function GetCatigori() {
    catigoriea = $(this).text();
  $.get("../../controllers/ajax.php",  { "catigories":$(this).text() , "table":'prise' , "ASC":'ASC'})
      .done(function(data) {
          product = data.split('||');
          $('.box-product').remove();
        for (var i = 0; i < product.length-1; i++) {
          product_info = product[i].split('//');
          data_attr = 'data-name="'+product_info[0]+'" data-img="'+product_info[2]+'" data-data="'+product_info[1]+'" data-prise="'+product_info[3]+'"';
        $('.products').append('<div class="box-product"><div class="box-img"><img src="../../assets/img/'+product_info[2]+'" alt=""></div><div class="box-info"><div class="name">'+product_info[0]+'</div><div class="data">'+product_info[1]+'</div><div class="row justify-content-around"><div class="prise">'+product_info[3]+' UA</div><div class="btn-buy" '+data_attr+'>Buy</div></div></div></div>');
        }
  })
updateURL(catigoriea,'prise','ASC')
})


$('select').on('change',function () {
  filter = $(this).val().split('|');
  $.get("../../controllers/ajax.php",  { "catigories":catigoriea ,  "table":filter[0] , "ASC":filter[1]})
      .done(function(data) {
          product = data.split('||');
          $('.box-product').remove();
        for (var i = 0; i < product.length-1; i++) {
          product_info = product[i].split('//');
           data_attr = 'data-name="'+product_info[0]+'" data-img="'+product_info[2]+'" data-data="'+product_info[1]+'" data-prise="'+product_info[3]+'"';
        $('.products').append('<div class="box-product"><div class="box-img"><img src="../../assets/img/'+product_info[2]+'" alt=""></div><div class="box-info"><div class="name">'+product_info[0]+'</div><div class="data">'+product_info[1]+'</div><div class="row justify-content-around"><div class="prise">'+product_info[3]+' UA</div><div class="btn-buy"'+data_attr+'>Buy</div></div></div></div>');
        }
      })
      updateURL(catigoriea,filter[0],filter[1])
  })
