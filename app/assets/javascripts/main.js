
function listEvents(e){
  console.log('clicky')
  getData(e).done(function(data){

    console.log(data)
    setTimeout(function(){
      emptyContainer();
      data.forEach(function(event){
        appendEvent(event.name);
      })
    },300)
  });
}

//gest the data
function getData(e){
  emptyContainer();
  console.log('click getdata')
  $('#events')
  return $.getJSON('/events')
}

function renderEvent (oneEvent) {
// console.log(oneEvent.event)
  let $sampleEvent = oneEvent.event
  console.log('hello')
  let $event = $('<h3>').text($sampleEvent.replace(/&quot;/g,'"'))
  var $container = $('#event-container')
  $('#events').html($event)
}

function getEvents(){
  $.getJSON('/eventsget').done(function(events) {
    let oneEvent = events.value.shift()
    renderEvent(oneEvent)
    //fix shift unecessary!!
  })
}

function emptyContainer(){
  $('#events').empty();
}

function appendEvent(event){
  let $event = $('<li>').addClass('listed').text(event);
  $('#events').append($event);
}
//ignore below

function saveEvent(e){
    // e.preventDefault();
    console.log('you hit the save')
    // let $svevent = ('h4').div:eq(0);
    console.log(e.target.children[0].innerHTML)
    // console.log($svevent)
    // let data = {
    //   event: $svevent,
      // }

    // $.post('/events', data).done ( (response) => {
    // console.log(response);
    // })

}



$(function() {

 //  console.log('test test')
 //  getEvents();

 //  $('#save').click(function() {
 //    saveEvent()
 //    getEvents()
 //  })

    $('#list').click(function() {
      e.preventDefault()
      console.log('click click')
      emptyContainer()
      listEvents()
    })

      $('.former').on('submit',function (e){
       e.preventDefault()
       console.log("ok");
       saveEvent(e);

        });

    $('#test').on('click',function (){
       console.log("ok");
        $.get({
        url :'/auth/facebook',
        type:'GET',
        dataType: 'json',
        xhrFields: { withCredentials: true },
        success: function(data) {
          console.log('nice work!', data);
        }
        });
    });




});
