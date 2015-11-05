$(document).ready(function(){
  $("#position_paper_committee_id").on("change", function(ev){
    ev.preventDefault();
    var comm_id = $(this).val();

    var request = $.ajax({
      url: '/topics',
      type: "GET",
      data: {comm_id: comm_id}
    })

    request.done(function(response){
      $("#position_paper_topic_id").find('option').remove().end();

      for (var i = 0; i < response.length; i++) {
        $("#position_paper_topic_id")
          .append('<option value="' + response[i][1] + '">' + response[i][0] + '</option>');
      }
    })
  })
})
