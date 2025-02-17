var config = 
{    
    /*
        Do we want to show the image?
        Note that imageSize still affects the size of the image and where the progressbars are located.
    */
    enableImage: true,

    /* 
        Relative path the the logo we want to display.
    */
    image: "img/logo.png",

    /*
        How big should the logo be?
        The values are: [width, height].
        Recommended to use square images less than 1024px.
    */
    imageSize: [512, 512],

    /*
        Define the progressbar type
            0 = Single progressbar
            1 = Multiple progressbars
            2 = Collapsed progressbars
     */
    progressBarType: 0,

    /*
        Here you can disable some of progressbars.
        Only applys if `singleProgressbar` is false.
    */
    progressBars:
    {
        "INIT_CORE": {
            enabled: false, //NOTE: Disabled because INIT_CORE seems to not get called properly. (race condition).
        },

        "INIT_BEFORE_MAP_LOADED": {
            enabled: true,
        },

        "MAP": {
            enabled: true,
        },

        "INIT_AFTER_MAP_LOADED": {
            enabled: true,
        },

        "INIT_SESSION": {
            enabled: true,
        }
    },

    /*
        Loading messages will be randomly picked from the array.
        The message is located on the left side above the progressbar.
        The text will slowly fade in and out, each time with another message.
        You can use UTF-8 emoticons inside loading messages! 
    */
    loadingMessages: 
    [
      "Rustling Jimmy's... &#x1F4A2;",
        "Convincing AI to not turn evil",
        "Destroying the evidence... &#x1F609;",
        "Building a wall...",
        "Cleaning out the backseat.... &#x1F92E; &#x1F693;",
        "Generating planted drugs.... &#x1F341;",
        "Making the wall taller...",
        "Planting evidence... &#x1F44C;",
        "Never steal. The government hates competition...&#x1F3DB;",
        "99 bottles of beer on the wall...&#xF37A;",
        "Mentioning Kenny on Discord... &#x1F92C;",
        "Prank calling 911... &#x1F692; &#x1F691; &#x1F693;",
        "Stealing the homeless guy's box... &#xFE0F;",
        "Falsifying Records... &#x1F47B;",
        "Eating moms meatloaf... &#x1F969;",
        "Feel free to spin around in your chair &#x1F4BA;",
        "Processing Whitelist Requests... &#x1F4C2;",
        "How about this weather, eh? &#x1F324;",
        "Generating proof of Flat Earth &#x1F30E;",
        "Nullifying Quantum Loops &#x1F6E0;",
        "Eating the last donut... &#x1F369;",
        "Looking for a Tesla Roadster in space... &#x1F52D; &#x1F3CE;",
        "Ignoring Bug Reports &#x1F41B;",
        "Spinning the hamster... &#x1F439;",
        "Mining bitcoins from your computer... &#x1F5A5; &#xFE0F;",
        "Destroying all police vehicles... &#x1F6A8; &#x1F693;",
		
    ],

    /*
        Rotate the loading message every 5000 milliseconds (default value).
    */
    loadingMessageSpeed: 5 * 1000,

    /*
        Array of music id's to play in the loadscreen.
        Enter your youtube video id's here. In order to obtain the video ID
        Take whats after the watch?v= on a youtube link.
        https://www.youtube.com/watch?v=<videoid>
        Do not include the playlist id or anything, it should be a 11 digit code.
        
        Do not use videos that:
            - Do not allow embedding.
            - Copyrighted music (youtube actively blocks this).
    */
    music:
    [
        "AINGJmnwMic", "sT_VcU_jOEM", "PVfjOjiBUkc", "vWdjWYhEONA",
        "HcJHr_8i-PY", "HCXW-Wbfn4U", "E1nBw1IwCI8", "wzAq_wbVT9A",
        "KeuPv9lN6zI", "IEZ6JHezCAw", "kGh7spYm2fs", "wLo2RvLU57c",
        "NYuhye3AYSY", "u3xqpu7v8jU", "UTBuH5ZNnJQ", "vWdjWYhEONA",
        "FYW1Y4EEA2Y", "E-4Dtd6mC-c", "zQnj66Xuajs", "8OgHDck_vT0",
        "kUdCNdd9n28", "qDUH3PUoYtw", "SoMeB4QBVug", "8sV6AT6jVuI"
    ],


    /*
        Set to false if you do not want any music.
    */
    enableMusic: true,

    /*
        Default volume for the player. Please keep this under 50%, to not blowout someones eardrums x)
     */
    musicVolume: 20,

    /*
        Should the background change images?
        True: it will not change backgrounds.
        False: it will change backgrounds.
    */
    staticBackground: false,
    
    /*
        Array of images you'd like to display as the background.
        Provide a path to a local image, using images via url is not recommended.
    */
    background: 
    [
        "img/bg1.jpg",
        "img/bg2.jpg",
        "img/bg3.jpg",
        "img/bg4.jpg",
    ],

    /*
        Time in milliseconds on how fast the background
        should swap images.
     */
    backgroundSpeed: 10 * 1000,
    backgroundStyle: "zoom",
}
