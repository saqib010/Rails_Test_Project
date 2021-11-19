<select name="select1" id="select1">
<option value="1">feature</option>
  <option value="2">bug</option>
</select>


<select name="select2" id="select2">
  <option value="1">new</option>
  <option value="1">started</option>
  <option value="1">completed</option>

  <option value="2">new</option>
  <option value="2">started</option>
  <option value="2">resolved</option>
</select>

<script type="text/javascript">
  $("#select1").change(function() {
  if ($(this).data('options') === undefined) {
    /*Taking an array of all options-2 and kind of embedding it on the select1*/
    $(this).data('options', $('#select2 option').clone());
  }
  var id = $(this).val();
  var options = $(this).data('options').filter('[value=' + id + ']');
  $('#select2').html(options);
});
  
</script>