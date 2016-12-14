$.get('suburbs_nsw.json', function(data){
    $("#suburb").typeahead({ source:data });
},'json');
