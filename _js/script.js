'use strict'

import {
  html
} from './helpers/util.js';

var locationAdresses;
var allActivities;
var currentTaal = $('#current-taal').data('taal');
var selectedActivities;


//json_getById(locations[i], locationAdresses).adres
function json_getById(key, data) {
  var found = null;

  for (var i = 0; i < data.length; i++) {
    var element = data[i];

    if (element.id == key) {
      found = element;
    }
  }

  return found;
}

function json_getByActivityId(key, data) {
  var found = null;

  for (var i = 0; i < data.length; i++) {
    var element = data[i];

    if (element.activityId == key) {
      found = element;
    }
  }

  return found;
}


function json_getTemplateId(key, data) {
  var found = null;

  for (var i = 0; i < data.length; i++) {
    var element = data[i];
    var activitiesArray = element.forActivities;
    

    if (activitiesArray.indexOf(key) >= 0) {
      found = element;
    }
  }

  return found;
}



Handlebars.registerHelper("switch", function(value, options) {

  //this._switch_value_ = value;
  var html = options.fn(this); // Process the body of the switch block
  delete this;
  return html;
});

Handlebars.registerHelper("case", function(value, options) {
  if (value == this) {
    return options.fn(this);
  }
});

// Handlebars.registerHelper('splitLocations', function(value, options){

// })

(function() {

    function init() {

      selectedActivities = [];
      var url = window.location.pathname.split('?');
      var pageName = url[url.length - 1];
      var type = window.location.search;
      var pageType = type.split('=')[1];



      $('.parameter-input').on('change', getActivities);
      $('#contact-form').on('submit', submitContact);


      $('.resetAantal').on('click', function() {
        $('#participants_filter').val('');
      })

      getActivities();

      activePage();

      

      $('.change-taal').on('click', function() {
        var chosen_lang = $(this).data('taal')
        $.post('session_write.php', {
            session_taal: chosen_lang
          },
          function() {
            window.location.reload();

          });


      })


      $('.current-taal').on('click', function() {
        if ($('.taal-kiezen').css('height') !== '50px') {
          $('.taal-kiezen').css('height', '50px');
        } else {
          $('.taal-kiezen').css('height', '150px');

        }
      });
      if ($('.photo-view').length) {
        gallery();
      }


      // if(window.location.pathname==="/"){
      //     window.location.pathname = "/index.php";
      // }

      switch (pageType) {

        case "activity":
          gallery();
          break;

        case "aanvragen":
          setupAanvraagformulier();
          
          break;
      }

      $('.link-type').on('click', function() {
        //console.log($(this).data('type'));
        var thisItems = $(this).parent().parent().find('.items-in-type');
        if (thisItems.css('display') == "none") {
          $(this).parent().parent().find('.arrow-down').attr('class', 'arrow-down glyphicon glyphicon-chevron-down')
          thisItems.slideDown();
        } else {
          thisItems.slideUp();
          $(this).parent().parent().find('.arrow-down').attr('class', 'arrow-down glyphicon glyphicon-chevron-up')
        }
      })
    }

    function search() {

      var searchParameters = {

        belongs_to_category: 2,
        top_category: 0,
        duur: '3 tot 4 uur'

      };

      $.ajax({
          url: 'index.php?page=all',
          type: 'POST',
          dataType: 'json',
          data: searchParameters
        })
        .done(function(data) {
          console.log(data);
        });
    }

    function activePage(){

      $('.active-item').removeClass('active-item');
      var currentPage = "index.php" + window.location.search
      var jqCurrent = $('a[href="' + currentPage + '"]')
      jqCurrent.addClass('active-item');


      
      var url = window.location.pathname.split('?');
      var pageName = url[url.length - 1];
      var type = window.location.search;
      if(type){
      var pageType = type.split('=')[1];
      if(window.location.search){

      var kindOfPage = window.location.search.split('=')[1]
      if(kindOfPage){
        var idCheck = window.location.search.split('&')[1];
        if(idCheck){
      var idOfActivity = idCheck.split('=')[1];


      //console.log(kindOfPage, idOfActivity);

      if(kindOfPage == "globalItem&id" && idOfActivity){
        getAllPrices();
        getAllVerwacht();
        getAllPrograms()
      }
    }
    }
    }

    }
      
      
    }

    function getAllPrices(){
      
      $.getJSON('assets/data/prijzen.json', function(data){
      
      getSinglePrice(data.prijzen)
})    
     
    }

    function getAllPrograms(){
      
      $.getJSON('assets/data/programmas.json', function(data){
      
      getSingleProgramme(data.programmas)
})    
     
    }

    function getAllVerwacht(){
      
      $.getJSON('assets/data/watVerwachten.json', function(data){
      
      getSingleVerwacht(data.wat_verwachten)
      
})    
     
    }

    function getSingleVerwacht(verwacht){

      var idOfActivity = window.location.search.split('&')[1].split('=')[1]
      
      var welke_template = json_getTemplateId(parseInt(idOfActivity),verwacht)
      

      if(welke_template){
        if(welke_template.startTemplate){
          //$('a[href="' + currentPage + '"]')
          switch (currentTaal){
            case "NL":
            var startTemplateOfActivity = $('#nl_templates ul[data-template-id="' + welke_template.startTemplate +'"]');
            break;

             case "FR":
            var startTemplateOfActivity = $('#fr_templates ul[data-template-id="' + welke_template.startTemplate +'"]');
            break;

             case "ENG":
            var startTemplateOfActivity = $('#en_templates ul[data-template-id="' + welke_template.startTemplate +'"]');
            break;
          }
          
          startTemplateOfActivity.show();

          if(welke_template.customFields){

            switch (currentTaal){
            case "NL":
            var customFieldsText = welke_template.customFields_nl
            break;

             case "FR":
             var customFieldsText = welke_template.customFields_fr
            
            
            break;

             case "ENG":
             var customFieldsText = welke_template.customFields_en
            
            break;
          }

          for(var i = 0; i< customFieldsText.length; i++){
            var customLi = document.createElement('li');
            customLi.innerHTML= customFieldsText[i];
            
            $('ul[data-template-id="' + welke_template.startTemplate +'"]' + ' .li-items').prepend($(customLi));
          }
        }

        }

        // switch (welke_template.id){
        //   case 1: 
        //   break;

        //   case 2:
        //   break;

        //   case 3:
        //   //welke_template.startTemplate
        //   break;

        //   case 4:
        //   break;

        //   default:
        //   console.log('default');
        // }
      }

    //   
    //   var wat_verwacht = json_getByActivityId(idOfActivity, prijzen);
    //   if(wat_verwacht){
    //   console.log(wat_verwacht);
    //   var prijsContainer = $('#handlebars-template-prijzen').text();
    //   var prijs_template = Handlebars.compile(prijsContainer);

    //       var html = prijs_template(prijs);
    //       $('#append-prijzen').append($(html));
    // }

    }




    function getSinglePrice(prijzen){

      //console.log(prijzen);
      var idOfActivity = window.location.search.split('&')[1].split('=')[1]
      
      var prijs = json_getByActivityId(idOfActivity, prijzen);
      if(prijs){
      console.log(prijs);
      var prijsContainer = $('#handlebars-template-prijzen').text();
      var prijs_template = Handlebars.compile(prijsContainer);

          var html = prijs_template(prijs);
          $('#append-prijzen').append($(html));
    }

    }

    function getSingleProgramme(programmas){

      console.log("PROGRAMMA");
      var idOfActivity = window.location.search.split('&')[1].split('=')[1]
      
      var programma = json_getByActivityId(idOfActivity, programmas);
      if(programma){
      console.log(programma);
      var programmaContainer = $('#handlebars-template-programmas').text();
      var programma_template = Handlebars.compile(programmaContainer);

          var html = programma_template(programma);
          $('#append-programmas').append($(html));
          if(programma.opmerking){

            switch (currentTaal){
            case "NL":
            var opmerkingText = programma.opmerking_nl
            break;

             case "FR":
             var opmerkingText = programma.opmerking_fr
            
            
            break;

             case "ENG":
             var opmerkingText = programma.opmerking_en
            
            break;
          } 
            $('#append-opmerking').html(opmerkingText);
            $('.opmerking-container').show();
          
        
          }
    }

    }

    function getActivities() {

      $.ajax({
          url: 'index.php?page=allLocations',
          type: 'POST',
          dataType: 'json'
        })
        .done(function(data) {

          locationAdresses = data;

          $.ajax({
              url: 'index.php?page=all',
              type: 'POST',
              dataType: 'json'
            })
            .done(function(data) {

              filterSearch(data);
            });
        });
    }

    function grepFilter(valueToCheck, dataToFilter, kind_of_check, name_attribute, defaultValue) {
      if (defaultValue != null && !isNaN(valueToCheck) && valueToCheck != defaultValue) {
        //console.log(valueToCheck)
        dataToFilter = $.grep(dataToFilter, function(element, index) {
          //console.log(valueToCheck)
          switch (kind_of_check) {
            case "equal":
              return element[name_attribute] == valueToCheck;
              break;

            case "not_equal":
              return element[name_attribute] != valueToCheck;
              break;

            case "greater":
              return element[name_attribute] > valueToCheck;
              break;

            case "greater_equal":
              return element[name_attribute] >= valueToCheck;
              break;

            case "smaller":
              return element[name_attribute] < valueToCheck;
              break;

            case "smaller_equal":
              return element[name_attribute] <= valueToCheck;
              break;
          }
         
        })

      }
    }


    function filterSearch(data) {

      $('#filtered-activities').empty();
      var activity = $('#handlebars-template-activity').text();
      var activity_template = Handlebars.compile(activity);

      var filteredData = data;
      var location_filter = $('#location_filter').val();
      var category_filter = $('#category_filter').val();
      var participants_filter = $('#participants_filter').val();
      var duration_filter = $('#duration_filter').val();
      var price_filter = $('#price_filter').val();
      console.log(duration_filter,price_filter);


      filteredData = $.grep(filteredData, function(element, index) {
        return element['sub_category'] == '0';
      });

      if (category_filter != "all") {
        filteredData = $.grep(filteredData, function(element, index) {
          if (category_filter != 'easy-leisure') {
            return element['belongs_to_category'] == category_filter;
          } else {

            return element['easy_leisure'] == 1;


          }
        });
      }
      if (location_filter != "all") {
        if(location_filter != "own-location"){
        filteredData = $.grep(filteredData, function(element, index) {
          var locationArray = element['locatieId'].split(',')
          for(var i=0; i< locationArray.length; i++){
            if(locationArray[i] !== ""){
              return locationArray[i] == location_filter

              
            }
          }
          //return element['locatieId'] == location_filter;
        });
      }else{
        filteredData = $.grep(filteredData, function(element, index) {
          
              return element['zelf_gekozen_locatie'] == 1
            });

              
        
      }
      }

        if(duration_filter != "all"){
          filteredData = $.grep(filteredData, function(element, index) {
          var durationArray = element['duurType'].split(',')
          for(var i=0; i< durationArray.length; i++){
            if(durationArray[i] !== ""){
              return durationArray[i] == duration_filter

              
            }
          }
          //return element['locatieId'] == location_filter;
        });
        }

        if(price_filter != "all"){

          filteredData = $.grep(filteredData, function(element, index) {
          var priceArray = element['prijsType'].split(',');

          for(var i=0; i< priceArray.length; i++){
            if(priceArray[i] !== ""){
              return priceArray[i] == price_filter

              
            }
          }
          //return element['locatieId'] == location_filter;
        });
        }

      if (participants_filter != "") {
        filteredData = $.grep(filteredData, function(element, index) {
          return element['minAantal'] <= participants_filter;
        });
      }

      //grepFilter(valueToCheck, dataToFilter, kind_of_check, name_attribute, defaultValue){
      //grepFilter(parseInt(participants_filter), filteredData, "smaller_equal", "minAantal", "");

      filteredData = $.grep(filteredData, function(element, index) {
        return element['actief'] == 1;
      });

      filteredData = $.grep(filteredData, function(element, index) {
        return element['top_category'] != 1;
      });

      if (filteredData.length > 0) {
        $(filteredData).each(function(index, activity) {
          var locations = activity.locatieId.split(",");
          var locationsActivity = [];
          //console.log(locations);

          for (var i = 0; i < locations.length; i++) {
            if (locations[i] != "" && locations[i] != 0) {
              //console.log(locations[i]); 

              locationsActivity.push(json_getById(locations[i], locationAdresses).adres)

            }
          }

          var prices = activity.prijsType.split(",");
          var pricesActivity = [];
          //console.log(locations);

          for (var i = 0; i < prices.length; i++) {
            if (prices[i] != "" && prices[i] != 0) {
              //console.log(locations[i]); 

              pricesActivity.push(prices[i])

            }
          }

          var duration = activity.duurType.split(",");
          var durationActivity = [];
          //console.log(locations);

          for (var i = 0; i < duration.length; i++) {
            if (duration[i] != "" && duration[i] != 0) {
              //console.log(locations[i]); 

              durationActivity.push(duration[i])

            }
          }



          activity.locationsActivity = locationsActivity;
          activity.pricesActivity = pricesActivity;
          activity.durationActivity = durationActivity;
          //console.log(pricesActivity);
          var html = activity_template(activity);
          $('#filtered-activities').append($(html));
        })


      } else {

        var errorText;

        switch (currentTaal){
            case "NL":
            errorText = "Er voldoen geen activiteiten aan deze voorkeuren";
            break;

             case "FR":
             errorText = "No activities match your search";
            
            
            break;

             case "ENG":
             errorText = "No activities match your search";
            
            break;
          } 

        var html = "<p>" + errorText + "</p>";
        $('#filtered-activities').append($(html));

      }
    }


    function gallery() {
      var photos = $('.thumbOverlay .thumb');
      var photosSrc = [];
      var overlay = $('.thumbOverlay');
      $('.photo-view').attr('src', photos[0].src);

      overlay.each(function(index) {
        var thumbSrc = $(this).find('img').attr('src');
        photosSrc.push(thumbSrc.replace('_th', ''));
        $(overlay[index]).on('click', function() {

          $('.photo-view').attr('src', $(this).find('img').attr('src'));
          var currentPhoto = $('.photo-view').attr('src');
          //console.log(currentPhoto)

          var currentIndex = photosSrc.indexOf(currentPhoto);
          //console.log(currentIndex);
        })

      })

      //var indexShow1 = photosSrc.indexOf($('.photo-view').attr('src'));

      $('.index-current').html(1)

      $('.index-max').html(photosSrc.length)

      $('.arrow').on('click', function() {
        var currentPhoto = $('.photo-view').attr('src');
        if (currentPhoto.indexOf("http://localhost/outside") !== -1) {
          currentPhoto = currentPhoto.replace("http://localhost/outside/", "");

        }
        var currentIndex = photosSrc.indexOf(currentPhoto);


        if ($(this).hasClass('leftArrow')) {

          if (currentIndex === 0) {
            $('.photo-view').attr('src', photosSrc[photosSrc.length - 1]);

          } else {
            $('.photo-view').attr('src', photosSrc[currentIndex - 1]);
          }
        }
        if ($(this).hasClass('rightArrow')) {

          if (currentIndex === photosSrc.length - 1) {
            $('.photo-view').attr('src', photosSrc[0]);

          } else {
            $('.photo-view').attr('src', photosSrc[currentIndex + 1]);
          }
        }

        var indexShow = photosSrc.indexOf($('.photo-view').attr('src'));

        $('.index-current').html(indexShow + 1)

      })
    }

    function setupAanvraagformulier() {

      $.ajax({
          url: 'index.php?page=all',
          type: 'POST',
          dataType: 'json'
        })
        .done(function(data) {
            $('.activiteiten-zelf').empty();
            var activity_hb = $('#handlebars-template-activity-aanvraag').text();
            var activity_template = Handlebars.compile(activity_hb);

            var activity_overview = $('#handlebars-template-overview').text();
            var activity_overview_template = Handlebars.compile(activity_overview);

            allActivities = data;

            $(allActivities).each(function(index, activity) {

              if (activity.top_category == 1) {

                var html = activity_overview_template(activity);
                $('.activiteiten-zelf').append($(html));

              }
            })


            $(allActivities).each(function(index, activity) {

              if (activity.top_category == 0) {
                var html = activity_template(activity);
                var typeOverview = $('#items-type-' + activity.belongs_to_category);
                $(typeOverview).append($(html));
               
              }
            })

            $('#filter-term').each(function() {
                var elem = $(this);
                elem.data('oldVal', elem.val());
                elem.bind("propertychange change click keyup input paste", function(event) {

                    if (elem.data('oldVal') != elem.val()) {
                      elem.data('oldVal', elem.val());
                      var searchTerm = $('#filter-term').val();

                      $(allActivities).each(function(index, activity) {

                          if (activity.top_category == 0) {
                            switch (currentTaal) {
                              case "NL":
                              var termToCheck = activity.naam_nl.toLowerCase();
                              break;

                              case "FR":
                              var termToCheck = activity.naam_fr.toLowerCase();
                              break;

                              case "ENG":
                              var termToCheck = activity.naam_en.toLowerCase();
                              break;
                            }
                              if (searchTerm != "") {
                               if (termToCheck.toLowerCase().indexOf(searchTerm.toLowerCase()) >= 0) {
                                   
                                    $('#activity-' + activity.id).show();
                                    
                                  }else{
                                    $('#activity-' + activity.id).hide();
                                  }
                                }else{

                                  $('#activity-' + activity.id).show();

                                }
                            }
                          })
                      }
                    });
                });


              step1();

            })

        }

      function step1() {

        var idSelected;
        
        $('.checkbox-activity').on('change', function() {
        $('.interesse-in').html("")
          
          idSelected = [];
          var selected = [];
          var checkedCheckboxes = $('.checkbox-activity:checked')
          checkedCheckboxes.each(function(index) {
            selected.push($(checkedCheckboxes[index]).attr('name'));
            idSelected.push($(checkedCheckboxes[index]).data('id'));
            var newElement = document.createElement('li');
            var newSpan = document.createElement('span');
            newSpan.innerHTML = $(checkedCheckboxes[index]).attr('name');
            newElement.appendChild(newSpan);

            $('.interesse-in').append(newElement);


          });



          if (selected.length > 0) {

            $('#to-step-2').removeClass('not-active');
            $('.geen-activiteiten').hide();
            $('#to-step-2').attr('disabled', false)

          } else {
            $('.geen-activiteiten').show();
            $('#to-step-2').addClass('not-active');
            $('#to-step-2').attr('disabled', true)

          }

        })

        $('#to-step-2').on('click',function(){
          step2(idSelected);
        });

      }

      function step2(ids) {
        //console.log(ids);
        $('#stap1').hide();
        $('#stap2').show();
        var idsActivties = ids;
        var chosenActivities = [];
        for(var i=0; i<idsActivties.length; i++){
          //json_getById(locations[i], locationAdresses).adres
          //console.log(idsActivties[i], idsActivties)
          chosenActivities.push(json_getById(idsActivties[i], allActivities))
        }
        console.log(chosenActivities)

      }

     


      function submitContact(e) {
        e.preventDefault();
        var dataFilled = true;

        var input_name = $('#input-naam').val();
        if (input_name.length == 0) {
          $('#input-naam').addClass('error-field');
          dataFilled = false;
        } else {
          if ($('#input-naam').hasClass('error-field')) {
            $('#input-naam').removeClass('error-field')
          }
        }

        var input_email = $('#input-email').val();
        if (input_email.length == 0) {
          $('#input-email').addClass('error-field');
          dataFilled = false;
        } else {
          if ($('#input-email').hasClass('error-field')) {
            $('#input-email').removeClass('error-field')
          }
        }

        var input_gsm = $('#input-gsm').val();
        if (input_gsm.length == 0) {
          $('#input-gsm').addClass('error-field');
          dataFilled = false;
        } else {
          if ($('#input-gsm').hasClass('error-field')) {
            $('#input-gsm').removeClass('error-field')
          }
        }

        var input_subject = $('#input-onderwerp').val();
        if (input_subject.length == 0) {
          input_subject == "Geen onderwerp";
        }

        var input_message = $('#input-bericht').val();
        if (input_message.length == 0) {
          $('#input-bericht').addClass('error-field');
          dataFilled = false;
        } else {
          if ($('#input-bericht').hasClass('error-field')) {
            $('#input-bericht').removeClass('error-field')
          }
        }

        var contactInfo = {
          naam: input_name,
          email: input_email,
          gsm: input_gsm,
          onderwerp: input_subject,
          bericht: input_message
        }
        if (dataFilled) {

          $('.show-error').hide();

          $.ajax({

            type: "POST",
            url: 'sendMail.php',
            data: contactInfo,
            success: function() {
              console.log('succes');
              $('.form-item input:not([type=submit])').val('');
              $('.form-item textarea').val('');
              $('.show-succes').show();
              $('.show-error').hide();
              
            },


          })
        } else {

          $('.show-error').show();
          $('.show-succes').hide();

        }


      }

      


      init();
    })();