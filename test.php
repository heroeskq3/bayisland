<style type="text/css">
	@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

.checkbox_v2 input[type=checkbox] { display:none; } /* to hide the checkbox itself */
input[type=checkbox] + label:before {
  font-family: FontAwesome;
  display: inline-block;
}

.checkbox_v2 input[type=checkbox] + label:before { content: "\f096"; } /* unchecked icon */
.checkbox_v2 input[type=checkbox] + label:before { letter-spacing: 10px; } /* space between checkbox and label */

.checkbox_v2 input[type=checkbox]:checked + label:before { content: "\f046"; } /* checked icon */
.checkbox_v2 input[type=checkbox]:checked + label:before { letter-spacing: 5px; } /* allow space for check mark */
</style>

<div class="checkbox_v2">
  <input id="box1" type="checkbox" checked />
  <label for="box1"></label>
</div>
  <input id="box2" type="checkbox" checked />
  <label for="box2"></label>