<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
$id=$_POST['id'];
$diagnosis=$_POST['diagnosis'];
$instructions=$_POST['instructions'];
$doc_name=$_POST['doc_name'];
$med_id=time().rand(11,99).time();
mysql_select_db('hms');
$str="insert into prescription values('$id','$diagnosis','$instructions','$doc_name','$med_id')";
$res=@mysql_query($str)or die(mysql_error());
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$nf=$_POST['nf'];
$i=1;
while($i<=$nf)
{
	$medicine=' ';
	$tm1=$tm2=$tm3=0;
	$medicine=$_POST['medicine_'.$i];
	$tm='';
	if(isset($_POST['tm_1_'.$i]))
	{$tm1=1;}
	 if(isset($_POST['tm_2_'.$i]))
	{$tm2=1;}
	if(isset($_POST['tm_3_'.$i]))
	{$tm3=1;}
	$dosage=$_POST['dosage_'.$i];
	$str="insert into medicine values('$med_id','$dosage','$medicine','$tm1','$tm2','$tm3')";
	$res=@mysql_query($str)or die(mysql_error());
	$i++;
}
$id = $_POST['id']; 
$sql="SELECT * FROM patients WHERE id='$id'";


$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
	echo "<big><b>PRESCRIPTION : </b></big><br><br><br>";
	echo "DOCTOR NAME : $doc_name<br>"; 
	echo "<b>Patient Details : </b><br>";
    echo "PATIENT ID : {$row['id']}  <br><br> ".
         "NAME 		 : {$row['name']} <br><br> ".
         "AGE		 : {$row['age']} <br><br> ".
         "GENDER	 : {$row['gender']} <br><br> ".
         "MOBILE	 : {$row['mobile']} <br><br> ".
        
         "--------------------------------<br><hr>";
} 
$query1=mysql_query("select * from prescription,medicine where id=".$id." and med_id=mid");
$i=1;
while($rs1=mysql_fetch_assoc($query1))
{
echo 'MEDICINE '.$i.': '.$rs1['medicine_name'].' <br><br>';
echo 'Dosage '.$i.':'. $rs1['dosage'].' <br><br>';
echo 'Time '.$i.':'; 
if($rs1['tm_1']==1)
{echo ' Morning ';}
if ($rs1['tm_2']==1)
{echo ' Afternoon ';}
if ($rs1['tm_3']==1)
{echo ' Night';}

echo '<br><br>';
$i++;
}
	 echo "DIAGNOSIS : $diagnosis <br><br>".	
	 "ADDITIONAL INSTRUCTIONS : $instructions <br><br>".
	     "--------------------------------<br>";	
mysql_close($conn);
?>
<html>
<input type="button" onclick="window.print();" value="Print Prescription"/><br><br>
<a href="home.html"><b>HOME</b></a>
</html>
