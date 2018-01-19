$( document ).ready(function() {
  setTimeout(loadDatSkweenie, 2000);
});

function loadDatSkweenie() {
  var banner = ["&nbsp", "E" ,"m", "e", "r", "g", "e", "&nbsp", "N", "Y", "C", "R", "P"]
  var rules = ["No FailRP/VDM/RDM is tolerated.", 
               "Respect ALL members including staff.", 
               "All roleplay must be realistic.", 
               "Join our Discord to be apart of our growing community ommunity.", 
               "Failure to respect staff comamnds/rules will result in the appropriate disciplinary action",
               "Some of our departments include, NYPD, and FDNY with numerous sub divisions",
               "Press the `K` key on your keyboard to use the in-game menu.",
               "To call a staff member, use the aforementioned menu."
              ]
  var fadeTime = 500
  var fadeTime2 = 500
  $(".infohold").fadeIn(900)
  $(".steamid").show(900)
  $(banner).each(function( i ) {
    var tCount = Number(i)
    fadeTime = fadeTime + 200
    $(".banner p:nth-child("+tCount+")").hide()
    $( ".banner" ).append( "<p>"+banner[tCount]+"</p>" );
    $(".banner p:nth-child("+tCount+")").fadeIn(fadeTime)
  })
  $(rules).each(function( i ) {
    var rCount = Number(i) 
    fadeTime2 = fadeTime2 + 300
    $(".mike-block .text:nth-child("+rCount+")").hide()
    $( ".mike-block:nth-child(1)" ).append( "<p class='text'>"+rules[rCount]+"</p>" )
    $(".mike-block .text:nth-child("+rCount+")").show(fadeTime2)
  })
}