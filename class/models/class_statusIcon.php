<?php function class_statusIcon($i)
{
	switch ($i) {
	    case 0:
	       	$results = '<i class="material-icons md-dark pmd-sm">radio_button_unchecked</i>';
	        break;
	    case 1:
	       	$results = '<i class="material-icons md-dark pmd-sm">check_circle</i>';
	        break;
	}
return $results;
}
