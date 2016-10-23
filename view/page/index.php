
<div class="video-container">
    <div class="event-controls">
    <div class="paused control">
        <i class="fa fa-pause" aria-hidden="true"></i>
    </div>

    <div class="playing control">
        <i class="fa fa-play" aria-hidden="true"></i>
    </div>
</div>
<!-- autoplay -->
<video playsinline muted loop class="full-video"
 poster="assets/images/still-video.jpg" id="bgvid">
   <source src="assets/video_min.mp4" type="video/mp4">
   <source src="assets/video_min.webm" type="video/webm">
    

</video>

<div class='content-on-video'>

  <span class="show-aanbod arrow-up glyphicon glyphicon-chevron-up"></span>
        
  <button class="show-aanbod ons-aanbod">
    Ons aanbod
  </button>

  <div class="aanbod-content">
    <ul class="aanbod-flex">
      <a href=""><li>
        <?php echo taal('Outdoor activiteiten','a','a'); ?>
      </li></a>

      <a href=""><li>
        <?php echo taal('Events','a','a'); ?>
      </li></a>

      <a href=""><li>
        <?php echo taal('Vrijgezellenfeestjes','a','a'); ?>
      </li></a>

      <a href=""><li>
        <?php echo taal('Scholen sportdagen','a','a'); ?>
      </li></a>

      <a href=""><li>
        <?php echo taal('Outdoorpaketten','a','a'); ?>
      </li></a>

      <a href=""><li>
        <?php echo taal('Vakantiehuizen','a','a'); ?>
      </li></a>

      <a href=""><li>
        <?php echo taal('Easy Leisure','a','a'); ?>
      </li></a>
    </ul>
   
  </div>

</div>
</div>