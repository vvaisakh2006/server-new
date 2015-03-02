<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
  <title></title>
<script>
function noffields()
{
	var nof=document.getElementById('med_sel').value;
	window.location='prescription.php?nf='+nof;
}
</script>  
</head>
<body style="background-image: url(images/background4.jpg);">
<br>

<br>

<form method="post" action="generateprescription.php"><big><big>PRESCRIPTION :<br>
  <br>
  </big></big>
  <table width:="50%">
    <tbody>
		<tr>
        <td>Doctor Name : <br>
        </td>
        <td><input name="doc_name" type="text"><br>
        </td>
      </tr>
      <tr>
        <td>Patient ID : <br>
        </td>
        <td><input name="id" type="text"><br>
        </td>
      </tr>
      <tr>
      <td>Number of Medicines : <br>
      </td>
      <td>
      <select name="med_sel" id="med_sel" onChange="noffields()">
      <?php
      $i=1;
      while($i<=10)
      {
      echo '<option value="'.$i.'" ';
	  if(@$_GET['nf']==$i)
	  {echo 'selected';}
	  echo '>'.$i.'</option>';
	  $i++;
      }
      ?>
      </select>
      </td>
      <?php
	  if(isset($_GET['nf']))
	  {
		  $no=$_GET['nf'];
		 $i=1;
		 echo '<input type="hidden" name="nf" value="'.$no.'"/>';
		 while($i<=$no)
		 { 
        echo '<tr><td>Medicine : '.$i.' <br>
        </td>
        <td><input type="text" name="medicine_'.$i.'" />
        </td>
      
        <td>Time : <br>
        </td>
        <td>
		<input name="tm_1_'.$i.'" type="checkbox"> Morning</td><td>
        <input name="tm_2_'.$i.'" type="checkbox"> Afternoon</td><td>
        <input name="tm_3_'.$i.'" type="checkbox"> Night</td><td>
        </td>
		<td></td><td></td>
      <td>
	  Dosage:
	  </td>
	  <td>
	  <input type="text" name="dosage_'.$i.'" />
	  </td>	  
	  </tr>';
	  $i++;
		 }
	  ?>
      <tr>
        <td>Diagnosis :<br>
        </td>
        <td><textarea cols="30" rows="3" name="diagnosis"></textarea><br>
        </td>
      </tr>
      <tr>
        <td>Additional Instructions :<br>
        </td>
        <td><textarea cols="30" rows="3" name="instructions"></textarea> </td>
      </tr>
    </tbody>
  </table>
  <br>
  <br>
  <input name="submit" value="Generate Prescription" type="submit">&nbsp; &nbsp; <input name="reset" value="RESET" type="reset"> <big><big><br>
  </big></big></form>
<?php
	  }
	  ?>
</body>
</html>
