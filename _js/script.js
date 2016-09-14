'use strict'

import {
  html
} from './helpers/util.js';

var locationAdresses, allActivities, selectedActivities;
var currentTaal = $('#current-taal').data('taal');


function json_getById(key, data) {
  var found = null;
  if (data) {
    for (var i = 0; i < data.length; i++) {
      var element = data[i];

      if (element.id == key) {
        found = element;
      }
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


(function() {

    function init() {
      console.log('init');


      if ($('#page-name').html()) {
        document.title = $('#page-name').html()
      }

      $('.item-photos').each(function() {
        $(this).magnificPopup({
          delegate: 'a',
          type: 'image',
          gallery: {
            enabled: true
          }
        });
      });

      $('.activity-photos-grid').each(function() {
        $(this).magnificPopup({
          delegate: 'a',
          type: 'image',
          gallery: {
            enabled: true
          }
        });
      });



      $('img').each(function() {
        var filename = $(this).attr('src')
          //console.log(filename.split('/'))
        if (filename) {
          var filenameWithPath = filename.split('/')[filename.split.length];
          //console.log(filenameWithPath);
          if (filenameWithPath) {
            $(this).attr('alt', filenameWithPath.split('.')[0]);
          }
        }
      });

      selectedActivities = [];
      var url = window.location.pathname.split('?');
      var pageName = url[url.length - 1];
      var type = window.location.search;
      var pageType = type.split('=')[1];

      if ($('#canvas-map').length) {

        setupCanvasMap();
      }



      $
      $('#contact-form').on('submit', submitContact);


      $('.resetAantal').on('click', function() {
        $('#participants_filter').val('');
      })

      getActivities();
      activePage();
      setupMap();


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



      // if(window.location.pathname==="/"){
      //     window.location.pathname = "/index.php";
      // }

      switch (pageType) {


        case "aanvragen":
          setupAanvraagformulier();

          break;
      }

      $('.link-type').on('click', function() {
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

    function setupMap() {

      $(".map-asset").hover(
        function() {


          var asset_id = ($(this).data('asset-id'));

          $('.map-outside-asset-bg[data-asset-id="' + asset_id + '"]').css('opacity', 1);


        },
        function() {
          var asset_id = ($(this).data('asset-id'));


          $('.map-outside-asset-bg[data-asset-id="' + asset_id + '"]').css('opacity', 0);



        })

      $('.map-asset').on('click', function(e) {
        e.preventDefault();
        $('.map-item-text').css('display', 'none');

        var asset_id = ($(this).data('asset-id'));
        $('.map-item-text[data-asset-id="' + asset_id + '"]').show();
        $('html, body').animate({
          scrollTop: $('.map-item-text[data-asset-id="' + asset_id + '"]').offset().top
        }, 1000);


      })

      $('.arrow-map-item').on('click', function(e) {
        e.preventDefault();
        console.log($(this));
        if ($(this).parent().parent().parent().find('.item-large-section').css('display') == 'none') {
          $(this).parent().parent().parent().find('.item-large-section').show();
          $(this).addClass('glyphicon-chevron-up');
          $(this).removeClass('glyphicon-chevron-down');

        } else {

          //console.log($(this).parent().parent().parent().data('asset-id'))
          $(this).parent().parent().parent().find('.item-large-section').hide();
          $(this).addClass('glyphicon-chevron-down');
          $(this).removeClass('glyphicon-chevron-up');


        }
      })
    }


    function search() {

      $.ajax({
          url: 'index.php?page=all_other_data',
          type: 'POST',
          dataType: 'json'
        })
        .done(function(data) {
          console.log(data);
        });
    }

    function activePage() {

      $('.active-item').removeClass('active-item');
      var currentPage = "index.php" + window.location.search
      var jqCurrent = $('a[href="' + currentPage + '"]')
      jqCurrent.addClass('active-item');



      var url = window.location.pathname.split('?');
      var pageName = url[url.length - 1];
      var type = window.location.search;
      if (type) {
        var pageType = type.split('=')[1];
        if (window.location.search) {

          var kindOfPage = window.location.search.split('=')[1]
          if (kindOfPage) {
            var idCheck = window.location.search.split('&')[1];
            if (idCheck) {
              var idOfActivity = idCheck.split('=')[1];


              //console.log(kindOfPage, idOfActivity);

              if (kindOfPage == "globalItem&id" && idOfActivity) {
                console.log(json_getById(idOfActivity, allActivities))
                getAllPrices();
                getAllVerwacht();
                getAllPrograms()
              }
            }
          }
        }

      }


    }

    function getAllPrices() {

      $.getJSON('assets/data/prijzen.json', function(data) {

        getSinglePrice(data.prijzen)
      })

    }

    function getAllPrograms() {

      $.getJSON('assets/data/programmas.json', function(data) {

        getSingleProgramme(data.programmas)
      })

    }

    function getAllVerwacht() {

      $.getJSON('assets/data/watVerwachten.json', function(data) {

        getSingleVerwacht(data.wat_verwachten)

      })

    }

    function getSingleVerwacht(verwacht) {

      var idOfActivity = window.location.search.split('&')[1].split('=')[1]

      var welke_template = json_getTemplateId(parseInt(idOfActivity), verwacht)


      if (welke_template) {
        if (welke_template.startTemplate) {
          //$('a[href="' + currentPage + '"]')
          switch (currentTaal) {
            case "NL":
              var startTemplateOfActivity = $('#nl_templates ul[data-template-id="' + welke_template.startTemplate + '"]');
              break;

            case "FR":
              var startTemplateOfActivity = $('#fr_templates ul[data-template-id="' + welke_template.startTemplate + '"]');
              break;

            case "ENG":
              var startTemplateOfActivity = $('#en_templates ul[data-template-id="' + welke_template.startTemplate + '"]');
              break;
          }

          startTemplateOfActivity.show();

          if (welke_template.customFields) {

            switch (currentTaal) {
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

            for (var i = 0; i < customFieldsText.length; i++) {
              var customLi = document.createElement('li');
              customLi.innerHTML = customFieldsText[i];

              $('ul[data-template-id="' + welke_template.startTemplate + '"]' + ' .li-items').prepend($(customLi));
            }
          }

        }
      }

    }




    function getSinglePrice(prijzen) {

      //console.log(prijzen);
      var idOfActivity = window.location.search.split('&')[1].split('=')[1]

      var prijs = json_getByActivityId(idOfActivity, prijzen);
      if (prijs) {
        console.log(prijs);
        var prijsContainer = $('#handlebars-template-prijzen').text();
        var prijs_template = Handlebars.compile(prijsContainer);

        var html = prijs_template(prijs);
        $('#append-prijzen').append($(html));
      }

    }

    function getSingleProgramme(programmas) {

      //console.log("PROGRAMMA");
      var idOfActivity = window.location.search.split('&')[1].split('=')[1]

      var programma = json_getByActivityId(idOfActivity, programmas);
      if (programma) {
        console.log(programma);
        var programmaContainer = $('#handlebars-template-programmas').text();
        var programma_template = Handlebars.compile(programmaContainer);

        var html = programma_template(programma);
        $('#append-programmas').append($(html));
        if (programma.opmerking) {

          switch (currentTaal) {
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
          url: 'index.php?page=all_other_data',
          type: 'POST',
          dataType: 'json'
        })
        .done(function(data) {
          var activitiesData = data[0];
          var locationsData = data[1];
          var typesData = data[2];
          var durationsData = data[3];
          var allLocations = data[4];

          filterSearch(activitiesData,locationsData,typesData, durationsData, allLocations);


          $('.parameter-input').change(function(){
            console.log('CHANGE');
            
            filterSearch(activitiesData,locationsData,typesData, durationsData, allLocations);
          
          })
            
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


    function filterSearch(data, locatieData, typeData, duurklasseData, allLocations) {

      $('#filtered-activities').empty();

      var activity = $('#handlebars-template-activity').text();
      var activity_template = Handlebars.compile(activity);
      

      var filteredData = data;
      //console.log(filteredData);
      var location_filter = $('#location_filter').val();
      var category_filter = $('#category_filter').val();
      var participants_filter = $('#participants_filter').val();
      var duration_filter = $('#duration_filter').val();
      var price_filter = $('#price_filter').val();


       if (duration_filter != "all") {
         filteredData = $.grep(filteredData, function(element, index) {

          for (var i = 0; i < duurklasseData.length; i++) {
            if(duurklasseData[i].duurId == duration_filter){
              if(element.id == duurklasseData[i].activiteitId){
                return true;
               }
             }
           }
         });
       }

       if (location_filter != "all") {
         filteredData = $.grep(filteredData, function(element, index) {

          for (var i = 0; i < locatieData.length; i++) {
            if(locatieData[i].locatieId == location_filter){
              if(element.id == locatieData[i].activiteitId){
                return true;
               }
             }
           }
         });
       }

      if (price_filter != "all") {

          filteredData = $.grep(filteredData, function(element, index) {
          return element['prijsklasseId'] == price_filter;
        });
      }

      if (category_filter != "all") {

          filteredData = $.grep(filteredData, function(element, index) {
          return element['categorieId'] == category_filter;
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



      

      if (filteredData.length > 0) {
        $(filteredData).each(function(index, activity) {
          var activityLocations = [];
              for (var i = 0; i < locatieData.length; i++) {
              if(activity.id == locatieData[i].activiteitId){
                var curr = json_getById(locatieData[i].locatieId, allLocations);
                activityLocations.push(curr)
               }
             
           }
           
           activity.locationsActivity = activityLocations;
          
          var html = activity_template(activity);
          $('#filtered-activities').append($(html));
        })


      } else {

        var errorText;

        switch (currentTaal) {
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



    function setupAanvraagformulier() {
      $('.items-in-type').empty();
      // $.ajax({
      //     url: 'index.php?page=allCategories',
      //     type: 'POST',
      //     dataType: 'json'
      //   })
      //   .done(function(data) {
      //     $(data).each(function(index, category) {

      //         //if (activity.top_category == 1) {

      //           var html = activity_overview_template(category);
      //           $('.activiteiten-zelf').append($(html));

      //         //}
      //       })
      //   });

      $.ajax({
          url: 'index.php?page=all',
          type: 'POST',
          dataType: 'json'
        })
        .done(function(data) {
            //console.log(data)
            
            var activity_hb = $('#handlebars-template-activity-aanvraag').text();
            var activity_template = Handlebars.compile(activity_hb);

            var activity_overview = $('#handlebars-template-overview').text();
            var activity_overview_template = Handlebars.compile(activity_overview);

            allActivities = data;




            $(allActivities).each(function(index, activity) {
              //console.log(activity)
              

        
              var html = activity_template(activity);
              var typeOverview = $('#items-type-' + activity.categorieId);
              $(typeOverview).append($(html));

              
            })

            $('#filter-term').each(function() {
                var elem = $(this);
                elem.data('oldVal', elem.val());
                elem.bind("propertychange change click keyup input paste", function(event) {

                    if (elem.data('oldVal') != elem.val()) {
                      elem.data('oldVal', elem.val());
                      var searchTerm = $('#filter-term').val();


                      $(allActivities).each(function(index, activity) {

                      
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

                          } else {
                            $('#activity-' + activity.id).hide();
                          }
                        } else {

                          $('#activity-' + activity.id).show();

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

    $('#to-step-2').on('click', function() {
      step2(idSelected);
    });

  }

  function step2(ids) {
    //console.log(ids);
    $('#stap1').hide();
    $('#stap2').show();
    var idsActivties = ids;
    var chosenActivities = [];
    for (var i = 0; i < idsActivties.length; i++) {
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