

    <?php
    	header("Content-Type: application/xls");    
    	header("Content-Disposition: attachment; filename=download.xls");  
    	header("Pragma: no-cache"); 
    	header("Expires: 0");
     
    	require_once 'connectfile.php';
     
    	$output = "";
     
    	if(ISSET($_POST['export'])){
    		$output .="
    			<table>
    				<thead>
    					<tr>
    						<th>Name</th>
    						<th>ID No.</th>
    						<th>Gross Salary</th>
    						<th>Advance</th>
    						<th>Loan Deduction</th>
							<th>Net Salary</th>
    					</tr>
    				<tbody>
    		";
     
    		$query = $conn->query("SELECT * FROM `staffpayroll`") or die(mysqli_errno());
    		while($fetch = $query->fetch_array()){
     
    		$output .= "
    					<tr>
    						<td>".$fetch['name']."</td>
    						<td>".$fetch['idno']."</td>
    						<td>".$fetch['gross']."</td>
    						<td>".$fetch['advance']."</td>
    						<td>".$fetch['loan']."</td>
							<td>".$fetch['net']."</td>

    					</tr>
    		";
    		}
     
    		$output .="
    				</tbody>
     
    			</table>
    		";
     
    		echo $output;
    	}
     
    ?>