<?php
session_start();
if (isset($_SESSION['authentiate'])&&$_SESSION['authentiate']==1) {
  require('require.php');
 ?>
<html>
    <head>
        <title>Add and remove websites</title>
        <link rel="stylesheet"href="demo.css">
    </head>
<div class="form-wrap">
	<div class="form-html">
		<div class="tab">
            <button class="tablinks" onclick="openCity(event, 'View')" ><b>VIEW OR DELETE</b></button>
            <button class="tablinks" onclick="openCity(event, 'Add')"id="defaultOpen"><b>ADD WEBSITE</b></button>
          </div>
          
          <div id="View" class="tabcontent">
            <form action="view.php" method="POST">
                <label for="user" class="label">USERNAME</label>
                <input id="user" type="text" name="user_name"><br>
                <div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check">ARE YOU SURE YOU WANT TO DELETE USER</label>
				</div>
                <br><br>
                <button id="del"type="submit" name="View_all" value="Delete">DELETE</button>
                <button id="mel"type="submit" name="View_all" value="View details">VIEW ALL</button>
            </form>
                </div>
          <div id="Add" class="tabcontent">
            <form action="add.php"method="POST">
                <label for="title" class="label">WEBSITE TITLE</label>
                <input id="title" name="website_name"type="text"><br>
                <label for="description" class="label">WEBSITE DESCRIPTION</label>
                <input id="description"type="text" name="website_description"><br>
                <label for="url" class="label">WEBSITE URL</label>
                <input id="url"type="text" name="website_url"><br>
                <label for="key" class="label">WEBSITE KEYWORDS</label>
                <input id="key"type="text"name="website_keyword"><br><br>
                <button id="cel"type="submit" name="addwebsite">ADD WEBSITE</button>
            </form>
           
          </div>
          </div>
          <script>
          function openCity(evt, cityName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
              tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
              tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
          }
          document.getElementById("defaultOpen").click();
          </script>
             
          </body>
          </html> 
          
	</div>
</div>
</html>
<?php
        }
    else{
        echo "Fail";
     header("Location: loginpage.php");
     exit();
}

 ?>