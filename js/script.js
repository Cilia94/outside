/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports, __webpack_require__) {

	eval("__webpack_require__(1);\nmodule.exports = __webpack_require__(4);\n\n\n/*****************\n ** WEBPACK FOOTER\n ** multi main\n ** module id = 0\n ** module chunks = 0\n **/\n//# sourceURL=webpack:///multi_main?");

/***/ },
/* 1 */
/***/ function(module, exports, __webpack_require__) {

	eval("'use strict';\n\nvar _helpersUtilJs = __webpack_require__(2);\n\nvar locationAdresses, allActivities, selectedActivities;\nvar currentTaal = $('#current-taal').data('taal');\n\nfunction json_getById(key, data) {\n  var found = null;\n\n  for (var i = 0; i < data.length; i++) {\n    var element = data[i];\n\n    if (element.id == key) {\n      found = element;\n    }\n  }\n\n  return found;\n}\n\nfunction json_getByActivityId(key, data) {\n  var found = null;\n\n  for (var i = 0; i < data.length; i++) {\n    var element = data[i];\n\n    if (element.activityId == key) {\n      found = element;\n    }\n  }\n\n  return found;\n}\n\nfunction json_getTemplateId(key, data) {\n  var found = null;\n\n  for (var i = 0; i < data.length; i++) {\n    var element = data[i];\n    var activitiesArray = element.forActivities;\n\n    if (activitiesArray.indexOf(key) >= 0) {\n      found = element;\n    }\n  }\n\n  return found;\n}\n\nHandlebars.registerHelper(\"switch\", function (value, options) {\n\n  //this._switch_value_ = value;\n  var html = options.fn(this); // Process the body of the switch block\n  delete this;\n  return html;\n});\n\nHandlebars.registerHelper(\"case\", function (value, options) {\n  if (value == this) {\n    return options.fn(this);\n  }\n});\n\n(function () {\n\n  function init() {\n    console.log('init');\n    if ($('#page-name').html()) {\n      document.title = $('#page-name').html();\n    }\n\n    $('.item-photos').each(function () {\n      $(this).magnificPopup({\n        delegate: 'a',\n        type: 'image',\n        gallery: {\n          enabled: true\n        }\n      });\n    });\n\n    $('.activity-photos-grid').each(function () {\n      $(this).magnificPopup({\n        delegate: 'a',\n        type: 'image',\n        gallery: {\n          enabled: true\n        }\n      });\n    });\n\n    $('img').each(function () {\n      var filename = $(this).attr('src');\n      //console.log(filename.split('/'))\n      if (filename) {\n        var filenameWithPath = filename.split('/')[filename.split.length];\n\n        $(this).attr('alt', filenameWithPath.split('.')[0]);\n      }\n    });\n\n    selectedActivities = [];\n    var url = window.location.pathname.split('?');\n    var pageName = url[url.length - 1];\n    var type = window.location.search;\n    var pageType = type.split('=')[1];\n\n    if ($('#canvas-map').length) {\n\n      setupCanvasMap();\n    }\n\n    $('.parameter-input').on('change', getActivities);\n    $('#contact-form').on('submit', submitContact);\n\n    $('.resetAantal').on('click', function () {\n      $('#participants_filter').val('');\n    });\n\n    getActivities();\n    activePage();\n    setupMap();\n\n    $('.change-taal').on('click', function () {\n      var chosen_lang = $(this).data('taal');\n      $.post('session_write.php', {\n        session_taal: chosen_lang\n      }, function () {\n        window.location.reload();\n      });\n    });\n\n    $('.current-taal').on('click', function () {\n      if ($('.taal-kiezen').css('height') !== '50px') {\n        $('.taal-kiezen').css('height', '50px');\n      } else {\n        $('.taal-kiezen').css('height', '150px');\n      }\n    });\n\n    // if(window.location.pathname===\"/\"){\n    //     window.location.pathname = \"/index.php\";\n    // }\n\n    switch (pageType) {\n\n      case \"aanvragen\":\n        setupAanvraagformulier();\n\n        break;\n    }\n\n    $('.link-type').on('click', function () {\n      var thisItems = $(this).parent().parent().find('.items-in-type');\n      if (thisItems.css('display') == \"none\") {\n        $(this).parent().parent().find('.arrow-down').attr('class', 'arrow-down glyphicon glyphicon-chevron-down');\n        thisItems.slideDown();\n      } else {\n        thisItems.slideUp();\n        $(this).parent().parent().find('.arrow-down').attr('class', 'arrow-down glyphicon glyphicon-chevron-up');\n      }\n    });\n  }\n\n  function setupMap() {\n\n    $(\".map-asset\").hover(function () {\n\n      var asset_id = $(this).data('asset-id');\n\n      $('.map-outside-asset-bg[data-asset-id=\"' + asset_id + '\"]').css('opacity', 1);\n    }, function () {\n      var asset_id = $(this).data('asset-id');\n\n      $('.map-outside-asset-bg[data-asset-id=\"' + asset_id + '\"]').css('opacity', 0);\n    });\n\n    $('.map-asset').on('click', function (e) {\n      e.preventDefault();\n      $('.map-item-text').css('display', 'none');\n\n      var asset_id = $(this).data('asset-id');\n      $('.map-item-text[data-asset-id=\"' + asset_id + '\"]').show();\n      $('html, body').animate({\n        scrollTop: $('.map-item-text[data-asset-id=\"' + asset_id + '\"]').offset().top\n      }, 1000);\n    });\n\n    $('.arrow-map-item').on('click', function (e) {\n      e.preventDefault();\n      console.log($(this));\n      if ($(this).parent().parent().parent().find('.item-large-section').css('display') == 'none') {\n        $(this).parent().parent().parent().find('.item-large-section').show();\n        $(this).addClass('glyphicon-chevron-up');\n        $(this).removeClass('glyphicon-chevron-down');\n      } else {\n\n        //console.log($(this).parent().parent().parent().data('asset-id'))\n        $(this).parent().parent().parent().find('.item-large-section').hide();\n        $(this).addClass('glyphicon-chevron-down');\n        $(this).removeClass('glyphicon-chevron-up');\n      }\n    });\n  }\n\n  function search() {\n\n    var searchParameters = {\n\n      belongs_to_category: 2,\n      top_category: 0,\n      duur: '3 tot 4 uur'\n\n    };\n\n    $.ajax({\n      url: 'index.php?page=all',\n      type: 'POST',\n      dataType: 'json',\n      data: searchParameters\n    }).done(function (data) {\n      console.log(data);\n    });\n  }\n\n  function activePage() {\n\n    $('.active-item').removeClass('active-item');\n    var currentPage = \"index.php\" + window.location.search;\n    var jqCurrent = $('a[href=\"' + currentPage + '\"]');\n    jqCurrent.addClass('active-item');\n\n    var url = window.location.pathname.split('?');\n    var pageName = url[url.length - 1];\n    var type = window.location.search;\n    if (type) {\n      var pageType = type.split('=')[1];\n      if (window.location.search) {\n\n        var kindOfPage = window.location.search.split('=')[1];\n        if (kindOfPage) {\n          var idCheck = window.location.search.split('&')[1];\n          if (idCheck) {\n            var idOfActivity = idCheck.split('=')[1];\n\n            //console.log(kindOfPage, idOfActivity);\n\n            if (kindOfPage == \"globalItem&id\" && idOfActivity) {\n              console.log(json_getById(idOfActivity, allActivities));\n              getAllPrices();\n              getAllVerwacht();\n              getAllPrograms();\n            }\n          }\n        }\n      }\n    }\n  }\n\n  function getAllPrices() {\n\n    $.getJSON('assets/data/prijzen.json', function (data) {\n\n      getSinglePrice(data.prijzen);\n    });\n  }\n\n  function getAllPrograms() {\n\n    $.getJSON('assets/data/programmas.json', function (data) {\n\n      getSingleProgramme(data.programmas);\n    });\n  }\n\n  function getAllVerwacht() {\n\n    $.getJSON('assets/data/watVerwachten.json', function (data) {\n\n      getSingleVerwacht(data.wat_verwachten);\n    });\n  }\n\n  function getSingleVerwacht(verwacht) {\n\n    var idOfActivity = window.location.search.split('&')[1].split('=')[1];\n\n    var welke_template = json_getTemplateId(parseInt(idOfActivity), verwacht);\n\n    if (welke_template) {\n      if (welke_template.startTemplate) {\n        //$('a[href=\"' + currentPage + '\"]')\n        switch (currentTaal) {\n          case \"NL\":\n            var startTemplateOfActivity = $('#nl_templates ul[data-template-id=\"' + welke_template.startTemplate + '\"]');\n            break;\n\n          case \"FR\":\n            var startTemplateOfActivity = $('#fr_templates ul[data-template-id=\"' + welke_template.startTemplate + '\"]');\n            break;\n\n          case \"ENG\":\n            var startTemplateOfActivity = $('#en_templates ul[data-template-id=\"' + welke_template.startTemplate + '\"]');\n            break;\n        }\n\n        startTemplateOfActivity.show();\n\n        if (welke_template.customFields) {\n\n          switch (currentTaal) {\n            case \"NL\":\n              var customFieldsText = welke_template.customFields_nl;\n              break;\n\n            case \"FR\":\n              var customFieldsText = welke_template.customFields_fr;\n\n              break;\n\n            case \"ENG\":\n              var customFieldsText = welke_template.customFields_en;\n\n              break;\n          }\n\n          for (var i = 0; i < customFieldsText.length; i++) {\n            var customLi = document.createElement('li');\n            customLi.innerHTML = customFieldsText[i];\n\n            $('ul[data-template-id=\"' + welke_template.startTemplate + '\"]' + ' .li-items').prepend($(customLi));\n          }\n        }\n      }\n    }\n  }\n\n  function getSinglePrice(prijzen) {\n\n    //console.log(prijzen);\n    var idOfActivity = window.location.search.split('&')[1].split('=')[1];\n\n    var prijs = json_getByActivityId(idOfActivity, prijzen);\n    if (prijs) {\n      console.log(prijs);\n      var prijsContainer = $('#handlebars-template-prijzen').text();\n      var prijs_template = Handlebars.compile(prijsContainer);\n\n      var html = prijs_template(prijs);\n      $('#append-prijzen').append($(html));\n    }\n  }\n\n  function getSingleProgramme(programmas) {\n\n    //console.log(\"PROGRAMMA\");\n    var idOfActivity = window.location.search.split('&')[1].split('=')[1];\n\n    var programma = json_getByActivityId(idOfActivity, programmas);\n    if (programma) {\n      console.log(programma);\n      var programmaContainer = $('#handlebars-template-programmas').text();\n      var programma_template = Handlebars.compile(programmaContainer);\n\n      var html = programma_template(programma);\n      $('#append-programmas').append($(html));\n      if (programma.opmerking) {\n\n        switch (currentTaal) {\n          case \"NL\":\n            var opmerkingText = programma.opmerking_nl;\n            break;\n\n          case \"FR\":\n            var opmerkingText = programma.opmerking_fr;\n\n            break;\n\n          case \"ENG\":\n            var opmerkingText = programma.opmerking_en;\n\n            break;\n        }\n        $('#append-opmerking').html(opmerkingText);\n        $('.opmerking-container').show();\n      }\n    }\n  }\n\n  function getActivities() {\n\n    $.ajax({\n      url: 'index.php?page=allLocations',\n      type: 'POST',\n      dataType: 'json'\n    }).done(function (data) {\n\n      locationAdresses = data;\n\n      $.ajax({\n        url: 'index.php?page=all',\n        type: 'POST',\n        dataType: 'json'\n      }).done(function (data) {\n\n        filterSearch(data);\n      });\n    });\n  }\n\n  function grepFilter(valueToCheck, dataToFilter, kind_of_check, name_attribute, defaultValue) {\n    if (defaultValue != null && !isNaN(valueToCheck) && valueToCheck != defaultValue) {\n      //console.log(valueToCheck)\n      dataToFilter = $.grep(dataToFilter, function (element, index) {\n        //console.log(valueToCheck)\n        switch (kind_of_check) {\n          case \"equal\":\n            return element[name_attribute] == valueToCheck;\n            break;\n\n          case \"not_equal\":\n            return element[name_attribute] != valueToCheck;\n            break;\n\n          case \"greater\":\n            return element[name_attribute] > valueToCheck;\n            break;\n\n          case \"greater_equal\":\n            return element[name_attribute] >= valueToCheck;\n            break;\n\n          case \"smaller\":\n            return element[name_attribute] < valueToCheck;\n            break;\n\n          case \"smaller_equal\":\n            return element[name_attribute] <= valueToCheck;\n            break;\n        }\n      });\n    }\n  }\n\n  function filterSearch(data) {\n\n    $('#filtered-activities').empty();\n    var activity = $('#handlebars-template-activity').text();\n    var activity_template = Handlebars.compile(activity);\n\n    var filteredData = data;\n    var location_filter = $('#location_filter').val();\n    var category_filter = $('#category_filter').val();\n    var participants_filter = $('#participants_filter').val();\n    var duration_filter = $('#duration_filter').val();\n    var price_filter = $('#price_filter').val();\n    console.log(duration_filter, price_filter);\n\n    filteredData = $.grep(filteredData, function (element, index) {\n      return element['sub_category'] == '0';\n    });\n\n    if (category_filter != \"all\") {\n      filteredData = $.grep(filteredData, function (element, index) {\n        if (category_filter != 'easy-leisure') {\n          return element['belongs_to_category'] == category_filter;\n        } else {\n\n          return element['easy_leisure'] == 1;\n        }\n      });\n    }\n    if (location_filter != \"all\") {\n      if (location_filter != \"own-location\") {\n        filteredData = $.grep(filteredData, function (element, index) {\n          var locationArray = element['locatieId'].split(',');\n          for (var i = 0; i < locationArray.length; i++) {\n            if (locationArray[i] !== \"\") {\n              return locationArray[i] == location_filter;\n            }\n          }\n          //return element['locatieId'] == location_filter;\n        });\n      } else {\n          filteredData = $.grep(filteredData, function (element, index) {\n\n            return element['zelf_gekozen_locatie'] == 1;\n          });\n        }\n    }\n\n    if (duration_filter != \"all\") {\n      filteredData = $.grep(filteredData, function (element, index) {\n        var durationArray = element['duurType'].split(',');\n        for (var i = 0; i < durationArray.length; i++) {\n          if (durationArray[i] !== \"\") {\n            return durationArray[i] == duration_filter;\n          }\n        }\n        //return element['locatieId'] == location_filter;\n      });\n    }\n\n    if (price_filter != \"all\") {\n\n      filteredData = $.grep(filteredData, function (element, index) {\n        var priceArray = element['prijsType'].split(',');\n\n        for (var i = 0; i < priceArray.length; i++) {\n          if (priceArray[i] !== \"\") {\n            return priceArray[i] == price_filter;\n          }\n        }\n        //return element['locatieId'] == location_filter;\n      });\n    }\n\n    if (participants_filter != \"\") {\n      filteredData = $.grep(filteredData, function (element, index) {\n        return element['minAantal'] <= participants_filter;\n      });\n    }\n\n    //grepFilter(valueToCheck, dataToFilter, kind_of_check, name_attribute, defaultValue){\n    //grepFilter(parseInt(participants_filter), filteredData, \"smaller_equal\", \"minAantal\", \"\");\n\n    filteredData = $.grep(filteredData, function (element, index) {\n      return element['actief'] == 1;\n    });\n\n    filteredData = $.grep(filteredData, function (element, index) {\n      return element['top_category'] != 1;\n    });\n\n    if (filteredData.length > 0) {\n      $(filteredData).each(function (index, activity) {\n        var locations = activity.locatieId.split(\",\");\n        var locationsActivity = [];\n        //console.log(locations);\n\n        for (var i = 0; i < locations.length; i++) {\n          if (locations[i] != \"\" && locations[i] != 0) {\n            //console.log(locations[i]);\n\n            locationsActivity.push(json_getById(locations[i], locationAdresses).adres);\n          }\n        }\n\n        var prices = activity.prijsType.split(\",\");\n        var pricesActivity = [];\n        //console.log(locations);\n\n        for (var i = 0; i < prices.length; i++) {\n          if (prices[i] != \"\" && prices[i] != 0) {\n            //console.log(locations[i]);\n\n            pricesActivity.push(prices[i]);\n          }\n        }\n\n        var duration = activity.duurType.split(\",\");\n        var durationActivity = [];\n        //console.log(locations);\n\n        for (var i = 0; i < duration.length; i++) {\n          if (duration[i] != \"\" && duration[i] != 0) {\n            //console.log(locations[i]);\n\n            durationActivity.push(duration[i]);\n          }\n        }\n\n        activity.locationsActivity = locationsActivity;\n        activity.pricesActivity = pricesActivity;\n        activity.durationActivity = durationActivity;\n        //console.log(pricesActivity);\n        var html = activity_template(activity);\n        $('#filtered-activities').append($(html));\n      });\n    } else {\n\n      var errorText;\n\n      switch (currentTaal) {\n        case \"NL\":\n          errorText = \"Er voldoen geen activiteiten aan deze voorkeuren\";\n          break;\n\n        case \"FR\":\n          errorText = \"No activities match your search\";\n\n          break;\n\n        case \"ENG\":\n          errorText = \"No activities match your search\";\n\n          break;\n      }\n\n      var html = \"<p>\" + errorText + \"</p>\";\n      $('#filtered-activities').append($(html));\n    }\n  }\n\n  function setupAanvraagformulier() {\n\n    $.ajax({\n      url: 'index.php?page=all',\n      type: 'POST',\n      dataType: 'json'\n    }).done(function (data) {\n      $('.activiteiten-zelf').empty();\n      var activity_hb = $('#handlebars-template-activity-aanvraag').text();\n      var activity_template = Handlebars.compile(activity_hb);\n\n      var activity_overview = $('#handlebars-template-overview').text();\n      var activity_overview_template = Handlebars.compile(activity_overview);\n\n      allActivities = data;\n\n      $(allActivities).each(function (index, activity) {\n\n        if (activity.top_category == 1) {\n\n          var html = activity_overview_template(activity);\n          $('.activiteiten-zelf').append($(html));\n        }\n      });\n\n      $(allActivities).each(function (index, activity) {\n\n        if (activity.top_category == 0) {\n          var html = activity_template(activity);\n          var typeOverview = $('#items-type-' + activity.belongs_to_category);\n          $(typeOverview).append($(html));\n        }\n      });\n\n      $('#filter-term').each(function () {\n        var elem = $(this);\n        elem.data('oldVal', elem.val());\n        elem.bind(\"propertychange change click keyup input paste\", function (event) {\n\n          if (elem.data('oldVal') != elem.val()) {\n            elem.data('oldVal', elem.val());\n            var searchTerm = $('#filter-term').val();\n\n            $(allActivities).each(function (index, activity) {\n\n              if (activity.top_category == 0) {\n                switch (currentTaal) {\n                  case \"NL\":\n                    var termToCheck = activity.naam_nl.toLowerCase();\n                    break;\n\n                  case \"FR\":\n                    var termToCheck = activity.naam_fr.toLowerCase();\n                    break;\n\n                  case \"ENG\":\n                    var termToCheck = activity.naam_en.toLowerCase();\n                    break;\n                }\n                if (searchTerm != \"\") {\n                  if (termToCheck.toLowerCase().indexOf(searchTerm.toLowerCase()) >= 0) {\n\n                    $('#activity-' + activity.id).show();\n                  } else {\n                    $('#activity-' + activity.id).hide();\n                  }\n                } else {\n\n                  $('#activity-' + activity.id).show();\n                }\n              }\n            });\n          }\n        });\n      });\n\n      step1();\n    });\n  }\n\n  function step1() {\n\n    var idSelected;\n\n    $('.checkbox-activity').on('change', function () {\n      $('.interesse-in').html(\"\");\n\n      idSelected = [];\n      var selected = [];\n      var checkedCheckboxes = $('.checkbox-activity:checked');\n      checkedCheckboxes.each(function (index) {\n        selected.push($(checkedCheckboxes[index]).attr('name'));\n        idSelected.push($(checkedCheckboxes[index]).data('id'));\n        var newElement = document.createElement('li');\n        var newSpan = document.createElement('span');\n        newSpan.innerHTML = $(checkedCheckboxes[index]).attr('name');\n        newElement.appendChild(newSpan);\n\n        $('.interesse-in').append(newElement);\n      });\n\n      if (selected.length > 0) {\n\n        $('#to-step-2').removeClass('not-active');\n        $('.geen-activiteiten').hide();\n        $('#to-step-2').attr('disabled', false);\n      } else {\n        $('.geen-activiteiten').show();\n        $('#to-step-2').addClass('not-active');\n        $('#to-step-2').attr('disabled', true);\n      }\n    });\n\n    $('#to-step-2').on('click', function () {\n      step2(idSelected);\n    });\n  }\n\n  function step2(ids) {\n    //console.log(ids);\n    $('#stap1').hide();\n    $('#stap2').show();\n    var idsActivties = ids;\n    var chosenActivities = [];\n    for (var i = 0; i < idsActivties.length; i++) {\n      //json_getById(locations[i], locationAdresses).adres\n      //console.log(idsActivties[i], idsActivties)\n      chosenActivities.push(json_getById(idsActivties[i], allActivities));\n    }\n    console.log(chosenActivities);\n  }\n\n  function submitContact(e) {\n    e.preventDefault();\n    var dataFilled = true;\n\n    var input_name = $('#input-naam').val();\n    if (input_name.length == 0) {\n      $('#input-naam').addClass('error-field');\n      dataFilled = false;\n    } else {\n      if ($('#input-naam').hasClass('error-field')) {\n        $('#input-naam').removeClass('error-field');\n      }\n    }\n\n    var input_email = $('#input-email').val();\n    if (input_email.length == 0) {\n      $('#input-email').addClass('error-field');\n      dataFilled = false;\n    } else {\n      if ($('#input-email').hasClass('error-field')) {\n        $('#input-email').removeClass('error-field');\n      }\n    }\n\n    var input_gsm = $('#input-gsm').val();\n    if (input_gsm.length == 0) {\n      $('#input-gsm').addClass('error-field');\n      dataFilled = false;\n    } else {\n      if ($('#input-gsm').hasClass('error-field')) {\n        $('#input-gsm').removeClass('error-field');\n      }\n    }\n\n    var input_subject = $('#input-onderwerp').val();\n    if (input_subject.length == 0) {\n      input_subject == \"Geen onderwerp\";\n    }\n\n    var input_message = $('#input-bericht').val();\n    if (input_message.length == 0) {\n      $('#input-bericht').addClass('error-field');\n      dataFilled = false;\n    } else {\n      if ($('#input-bericht').hasClass('error-field')) {\n        $('#input-bericht').removeClass('error-field');\n      }\n    }\n\n    var contactInfo = {\n      naam: input_name,\n      email: input_email,\n      gsm: input_gsm,\n      onderwerp: input_subject,\n      bericht: input_message\n    };\n    if (dataFilled) {\n\n      $('.show-error').hide();\n\n      $.ajax({\n\n        type: \"POST\",\n        url: 'sendMail.php',\n        data: contactInfo,\n        success: function success() {\n          console.log('succes');\n          $('.form-item input:not([type=submit])').val('');\n          $('.form-item textarea').val('');\n          $('.show-succes').show();\n          $('.show-error').hide();\n        }\n\n      });\n    } else {\n\n      $('.show-error').show();\n      $('.show-succes').hide();\n    }\n  }\n\n  init();\n})();\n\n/*****************\n ** WEBPACK FOOTER\n ** ./_js/script.js\n ** module id = 1\n ** module chunks = 0\n **/\n//# sourceURL=webpack:///./_js/script.js?");

/***/ },
/* 2 */
/***/ function(module, exports, __webpack_require__) {

	eval("'use strict';\n\nObject.defineProperty(exports, '__esModule', {\n  value: true\n});\n\nfunction _toConsumableArray(arr) { if (Array.isArray(arr)) { for (var i = 0, arr2 = Array(arr.length); i < arr.length; i++) arr2[i] = arr[i]; return arr2; } else { return Array.from(arr); } }\n\n__webpack_require__(3);\n\nvar html = function html(strings) {\n  for (var _len = arguments.length, values = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {\n    values[_key - 1] = arguments[_key];\n  }\n\n  var str = '';\n\n  if (Array.isArray(strings)) {\n    for (var i = 0; i < strings.length; i++) {\n      if (strings[i]) str += strings[i];\n      if (values[i]) str += values[i];\n    }\n  } else {\n    str = strings;\n  }\n\n  var doc = new DOMParser().parseFromString(str.trim(), 'text/html');\n\n  return doc.body.firstChild;\n};\n\nexports.html = html;\nvar prepend = function prepend($parent, $element) {\n  var $first = $parent.children[0];\n  $parent.insertBefore($element, $first);\n};\n\nexports.prepend = prepend;\nvar $ = function $(selector) {\n\n  var result = undefined;\n\n  if (selector === 'body') {\n    return document.body;\n  } else if (selector === 'head') {\n    return document.head;\n  } else if (/^[\\#.]?[\\w-]+$/.test(selector)) {\n\n    if (selector[0] === '#') {\n      return document.getElementById(selector.slice(1));\n    } else if (selector[0] === '.') {\n      result = document.getElementsByClassName(selector.slice(1));\n    } else {\n      result = document.getElementsByTagName(selector);\n    }\n  } else {\n    result = document.querySelectorAll(selector);\n  }\n\n  var elements = [].concat(_toConsumableArray(result));\n  if (elements.length === 1) return elements[0];\n  return elements;\n};\nexports.$ = $;\n\n/*****************\n ** WEBPACK FOOTER\n ** ./_js/helpers/util.js\n ** module id = 2\n ** module chunks = 0\n **/\n//# sourceURL=webpack:///./_js/helpers/util.js?");

/***/ },
/* 3 */
/***/ function(module, exports) {

	eval("/*! http://mths.be/array-from v0.2.0 by @mathias */\nif (!Array.from) {\n\t(function() {\n\t\t'use strict';\n\t\tvar defineProperty = (function() {\n\t\t\t// IE 8 only supports `Object.defineProperty` on DOM elements.\n\t\t\ttry {\n\t\t\t\tvar object = {};\n\t\t\t\tvar $defineProperty = Object.defineProperty;\n\t\t\t\tvar result = $defineProperty(object, object, object) && $defineProperty;\n\t\t\t} catch(error) {}\n\t\t\treturn result || function put(object, key, descriptor) {\n\t\t\t\tobject[key] = descriptor.value;\n\t\t\t};\n\t\t}());\n\t\tvar toStr = Object.prototype.toString;\n\t\tvar isCallable = function(fn) {\n\t\t\t// In a perfect world, the `typeof` check would be sufficient. However,\n\t\t\t// in Chrome 1–12, `typeof /x/ == 'object'`, and in IE 6–8\n\t\t\t// `typeof alert == 'object'` and similar for other host objects.\n\t\t\treturn typeof fn == 'function' || toStr.call(fn) == '[object Function]';\n\t\t};\n\t\tvar toInteger = function(value) {\n\t\t\tvar number = Number(value);\n\t\t\tif (isNaN(number)) {\n\t\t\t\treturn 0;\n\t\t\t}\n\t\t\tif (number == 0 || !isFinite(number)) {\n\t\t\t\treturn number;\n\t\t\t}\n\t\t\treturn (number > 0 ? 1 : -1) * Math.floor(Math.abs(number));\n\t\t};\n\t\tvar maxSafeInteger = Math.pow(2, 53) - 1;\n\t\tvar toLength = function(value) {\n\t\t\tvar len = toInteger(value);\n\t\t\treturn Math.min(Math.max(len, 0), maxSafeInteger);\n\t\t};\n\t\tvar from = function(arrayLike) {\n\t\t\tvar C = this;\n\t\t\tif (arrayLike == null) {\n\t\t\t\tthrow new TypeError('`Array.from` requires an array-like object, not `null` or `undefined`');\n\t\t\t}\n\t\t\tvar items = Object(arrayLike);\n\t\t\tvar mapping = arguments.length > 1;\n\n\t\t\tvar mapFn, T;\n\t\t\tif (arguments.length > 1) {\n\t\t\t\tmapFn = arguments[1];\n\t\t\t\tif (!isCallable(mapFn)) {\n\t\t\t\t\tthrow new TypeError('When provided, the second argument to `Array.from` must be a function');\n\t\t\t\t}\n\t\t\t\tif (arguments.length > 2) {\n\t\t\t\t\tT = arguments[2];\n\t\t\t\t}\n\t\t\t}\n\n\t\t\tvar len = toLength(items.length);\n\t\t\tvar A = isCallable(C) ? Object(new C(len)) : new Array(len);\n\t\t\tvar k = 0;\n\t\t\tvar kValue, mappedValue;\n\t\t\twhile (k < len) {\n\t\t\t\tkValue = items[k];\n\t\t\t\tif (mapFn) {\n\t\t\t\t\tmappedValue = typeof T == 'undefined' ? mapFn(kValue, k) : mapFn.call(T, kValue, k);\n\t\t\t\t} else {\n\t\t\t\t\tmappedValue = kValue;\n\t\t\t\t}\n\t\t\t\tdefineProperty(A, k, {\n\t\t\t\t\t'value': mappedValue,\n\t\t\t\t\t'configurable': true,\n\t\t\t\t\t'enumerable': true\n\t\t\t\t});\n\t\t\t\t++k;\n\t\t\t}\n\t\t\tA.length = len;\n\t\t\treturn A;\n\t\t};\n\t\tdefineProperty(Array, 'from', {\n\t\t\t'value': from,\n\t\t\t'configurable': true,\n\t\t\t'writable': true\n\t\t});\n\t}());\n}\n\n\n/*****************\n ** WEBPACK FOOTER\n ** ./~/array.from/array-from.js\n ** module id = 3\n ** module chunks = 0\n **/\n//# sourceURL=webpack:///./~/array.from/array-from.js?");

/***/ },
/* 4 */
/***/ function(module, exports) {

	eval("// removed by extract-text-webpack-plugin\n\n/*****************\n ** WEBPACK FOOTER\n ** ./_scss/style.scss\n ** module id = 4\n ** module chunks = 0\n **/\n//# sourceURL=webpack:///./_scss/style.scss?");

/***/ }
/******/ ]);