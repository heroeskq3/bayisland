<?php function class_statusInfo($i)
{
	switch ($i) {
	    case 0:
	        $results = 'Inactive';
	        break;
	    case 1:
	        $results = 'Active';
	        break;
	}
return $results;
}
