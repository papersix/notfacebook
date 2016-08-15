
function listEvents(e){
  console.log('clicky')
  getData(e).done(function(data){

    console.log(data)
    setTimeout(function(){
      emptyContainer();
      data.forEach(function(event){
        appendEvent(event.name);
        appendPlace(event.place);
        appendTime(event.time);
        appendDescription(event.description);
      })
    },300)
  });
}

function appendEvent(event){
  let $event = $('<h1>').addClass('listedin').text(event);
  $('#eventsin').append($event);
}
function appendPlace(place){
  let $place = $('<h2>').addClass('listedin').text(place);
  $('#eventsin').append($place);
}
function appendTime(time){
  let $time = $('<h3>').addClass('listedin').text(time);
  $('#eventsin').append($time);
}
function appendDescription(description){
  let $description = $('<p>').addClass('listedin').text(description);
  $('#eventsin').append($description);
  $('#eventsin').append('<hr />')
}
//ignore below
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


function saveEvent(e){
    e.preventDefault();
    // console.log('you hit the save')
    let $svname = (e.target.children[0].innerHTML)
    let $svplace = (e.target.children[1].innerHTML)
    let $svtime = (e.target.children[2].innerHTML)
    let $svdescription = (e.target.children[4].innerHTML)
    let data = {
      name: $svname,
      place: $svplace,
      time: $svtime,
      description: $svdescription
      }

    console.log(data)

    $.post('/events', data).done ( (response) => {
    console.log(response);
    })

}



$(function() {



    $('#list').click(function() {
      e.preventDefault()
      console.log('click click')
      emptyContainer()
      listEvents()
    })

      $('.former').on('submit',function (e){
       e.preventDefault()
       console.log("nice save");
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
