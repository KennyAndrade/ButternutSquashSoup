$( document ).ready(function() {
  setTimeout(loadDatSkweenie, 2000);
});

function loadDatSkweenie() {
  var banner = ["&nbsp", "E" ,"m", "e", "r", "g", "e", "&nbsp", "N", "Y", "C", "R", "P"]
  var rules = ["No FailRP/VDM/RDM.)", 
               "Respect All Members Including Staff.", 
               "Roleplay Is Expected To Be Legit.", 
               "Join The Discord To Be Apart Of Our Community.", 
               "If Any Of These Rules Are Broken It Will Result In A Kick/Ban",
               "Join The Discord To Apply For Our 4 Main Departments|NYPD|FDNY|NYSP|Dispatch.",
               "Use The K On Your Keyboard To Use The In Game Menu.",
               "If You Need A Staff Member Use The Request Admin In The Menu."
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
    $(".block .text:nth-child("+rCount+")").hide()
    $( ".block:nth-child(1)" ).append( "<p class='text'>"+rules[rCount]+"</p>" )
    $(".block .text:nth-child("+rCount+")").show(fadeTime2)
  })
}