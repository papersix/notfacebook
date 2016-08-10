function renderEvent (oneEvent) {
// console.log(oneEvent.event)
  let $sampleEvent = oneEvent.event
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

function getData(e){
  emptyContainer();
  $('#events')
  return $.getJSON('/events')
}

function listEvents(e){
  getData(e).done(function(data){

    console.log(data)
    setTimeout(function(){
      emptyContainer();
      data.forEach(function(event){

        appendEvent(event.event);
      })
    },300)
  });
}

function appendEvent(event){
  let $event = $('<li>').addClass('listed').text(event);
  $('#events').append($event);
}


function saveEvent(e){
    // e.preventDefault();
    console.log('you hit the save')
    let $svevent = $('h3').text();
    console.log($svevent)
    console.log($svevent)
    let data = {
      event: $svevent,
      }

    $.post('/events', data).done ( (response) => {
    console.log(response);
    })
}

$(function() {

  console.log('test test')
 //  getEvents();

 //  $('#save').click(function() {
 //    saveEvent()
 //    getEvents()
 //  })

 // $('#list').click(function() {
 //    emptyContainer()
 //    listEvents()

  // })
});
