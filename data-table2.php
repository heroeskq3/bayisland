<?php
//Section Parameters
$section_tittle      = "Menu Manager";
$section_description = null;
$section_style       = 1;
$section_searchbar   = 0;
$section_restrict    = 1;
$section_navbar      = 1;
?>
<?php require_once 'header.php';?>
<?php
function class_tableMainList($array)
{
    $results = array();
    if ($array['rows']) {
        foreach ($array['response'] as $row_array) {
        	
        	//$submenulist = class_submenuList($row_array['Id']);
            
            $results[] = array(
                //Define custom Patern Table Alias Keys => Values
                'Name'        => $row_array['Name'],
                'Description' => $row_array['Description'],
                'Url'         => $row_array['Url'],
                'Icon'        => $row_array['Icon'],
                'Status'      => class_statusInfo($row_array['Status']),

                //Define Index, Status, Childs
                'index'       => $row_array['Id'],
                'status'      => $row_array['Status'], //use = 1 or 0
                //'childs'      => class_tableChildList($submenulist), //define array
                'childs'      => null, //define array
            );
        }
    }

    return $results;
}

//params
$table_params = array(
    'name'        => "List",
    'searchbar'   => true,
    'rowsbypage'  => 10,
    'showactions' => true,
);

$menulist = class_menuList();
$table_array = class_tableMainList($menulist);

echo class_tableGenerator($table_array, $table_params);
?>
<section class="row component-section">
			<!-- responsive table code and example -->
			<div class="col-md-9">
				<!-- responsive table example -->
				<div class="pmd-card pmd-z-depth pmd-card-custom-view">
					<table id="example" class="table pmd-table table-hover table-striped display responsive nowrap" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>First name</th>
								<th>Last name</th>
								<th>Position</th>
								<th>Office</th>
								<th>Age</th>
								<th>Start date</th>
								<th>Salary</th>
								<th>Extn.</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
								<td>5421</td>
							</tr>
							<tr>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
								<td>8422</td>
							</tr>
							<tr>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Junior Technical Author</td>
								<td>San Francisco</td>
								<td>66</td>
								<td>2009/01/12</td>
								<td>$86,000</td>
								<td>1562</td>
							</tr>
							<tr>
								<td>Cedric</td>
								<td>Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td>22</td>
								<td>2012/03/29</td>
								<td>$433,060</td>
								<td>6224</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
							<tr>
								<td>Shad</td>
								<td>Decker</td>
								<td>Regional Director</td>
								<td>Edinburgh</td>
								<td>51</td>
								<td>2008/11/13</td>
								<td>$183,000</td>
								<td>6373</td>
							</tr>
							<tr>
								<td>Michael</td>
								<td>Bruce</td>
								<td>Javascript Developer</td>
								<td>Singapore</td>
								<td>29</td>
								<td>2011/06/27</td>
								<td>$183,000</td>
								<td>5384</td>
							</tr>
							<tr>
								<td>Donna</td>
								<td>Snider</td>
								<td>Customer Support</td>
								<td>New York</td>
								<td>27</td>
								<td>2011/01/25</td>
								<td>$112,000</td>
								<td>4226</td>
							</tr>
						</tbody>
					</table>
				</div> <!-- responsive table example end -->

			</div> <!-- responsive table code and example end-->
</section> <!-- Responsive table end -->
<?php require_once 'footer.php';?>



<!-- Datatable js -->
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>

<!-- Datatable Bootstrap -->
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>

<!-- Datatable responsive js-->
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js"></script>

<!-- Responsive Data table js-->
<script>
//Propeller  Customised Javascript code 
$(document).ready(function() {
	var exampleDatatable = $('#example').DataTable({
		responsive: {
			details: {
				type: 'column',
				target: 'tr'
			}
		},
		columnDefs: [ {
			className: 'control',
			orderable: false,
			targets:   1
		} ],
		order: [ 1, 'asc' ],
		bFilter: true,
		bLengthChange: true,
		pagingType: "simple",
		"paging": true,
		"searching": true,
		"language": {
			"info": " _START_ - _END_ of _TOTAL_ ",
			"sLengthMenu": "<span class='custom-select-title'>Rows per page:</span> <span class='custom-select'> _MENU_ </span>",
			"sSearch": "",
			"sSearchPlaceholder": "Search",
			"paginate": {
				"sNext": " ",
				"sPrevious": " "
			},
		},
		dom:
			"<'pmd-card-title'<'data-table-responsive pull-left'><'search-paper pmd-textfield'f>>" +
			"<'row'<'col-sm-12'tr>>" +
			"<'pmd-card-footer' <'pmd-datatable-pagination' l i p>>",
	});
	
	/// Select value
	$('.custom-select-info').hide();
	
	$(".data-table-responsive").html('<h2 class="pmd-card-title-text">Responsive Data table</h2>');
	$(".custom-select-action").html('<button class="btn btn-sm pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-primary" type="button"><i class="material-icons pmd-sm">delete</i></button><button class="btn btn-sm pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-primary" type="button"><i class="material-icons pmd-sm">more_vert</i></button>');
		
} );
</script>