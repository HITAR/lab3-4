# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  saved = true

  $("#new").click ->
    if saved
      saved = false
      $('#new').attr('disabled',"true")
      $("tbody").append("<tr>")
        .append('<td><input id="student_studentid" name="student[studentid]" type="number" /></td>')
        .append('<td><input id="student_studentname" name="student[studentname]" type="text" /></td>')
        .append('<td><input id="student_nickname" name="student[nickname]" type="text" /></td>')
        .append('<td><input id="student_projectscore" name="student[projectscore]" type="number" data-score-field data-maxima=40 /></td>')
        .append('<td><input id="student_finalscore" name="student[finalscore]" type="number" data-score-field data-maxima=40 /></td>')
        .append('<td><input id="student_labscore" name="student[labscore]" type="number" data-score-field data-maxima=10 /></td>')
        .append('<td><input id="student_classscore" name="student[classscore]" type="number" data-score-field data-maxima=10 /></td>')
        .append('<td><input id="final" type="number" disabled /></td></tr>')
      # TODO: front-end input validation
      # calculate final score when focus out
      $("input[data-score-field]").focusout ->
        # ret = 0
        # val = parseInt($(this).val())
        # maxima = parseInt($(this).attr('data-maxima')) || 0
        ret = 0
        $("input[data-score-field]").each ->
          ret += parseInt($(this).val()) || 0
        $("#final").val(ret)
      $("#student_studentid").focus()
    else
      alert "Student not been saved yet!"
      $('#new').attr('disabled',"true")





