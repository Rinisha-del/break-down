<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/ProgressBar1.css">
<style>
/*BACK BUTTON STYLE */

.buttons {
  display: flex;
  flex-direction: row;
      flex-wrap: wrap;
  justify-content: center;
  text-align: center;
  width: 100%;
  height: 100%;
  margin: 0 auto;
/*   padding: 2em 0em; */
}

.container {
  align-items: center;
  display: flex;
  flex-direction: column;
  justify-content: center;
  text-align: center;
  background-color: #FFF;
  padding:  40px 0px;
  width: 240px;
}

.btn {
  letter-spacing: 0.1em;
  cursor: pointer;
  font-size: 14px;
  font-weight: 400;
  line-height: 45px;
  max-width: 160px;
  position: relative;
  text-decoration: none;
  text-transform: uppercase;
  width: 100%;
}
.btn:hover {
  text-decoration: none;
}

/*btn_background*/
.effect01 {
  color: #FFF;
  border: 4px solid #000;
  box-shadow:0px 0px 0px 1px #000 inset;
  background-color: #000;
  overflow: hidden;
  position: relative;
  transition: all 0.3s ease-in-out;
}
.effect01:hover {
  border: 4px solid #666;
  background-color: #FFF;
  box-shadow:0px 0px 0px 4px #EEE inset;
}

/*btn_text*/
.effect01 span {
  transition: all 0.2s ease-out;
  z-index: 2;
}
.effect01:hover span{
  letter-spacing: 0.13em;
  color: #333;
}

/*highlight*/
.effect01:after {
  background: #FFF;
  border: 0px solid #000;
  content: "";
  height: 155px;
  left: -75px;
  opacity: .8;
  position: absolute;
  top: -50px;
  -webkit-transform: rotate(35deg);
          transform: rotate(35deg);
  width: 50px;
  transition: all 1s cubic-bezier(0.075, 0.82, 0.165, 1);/*easeOutCirc*/
  z-index: 1;
}
.effect01:hover:after {
  background: #FFF;
  border: 20px solid #000;
  opacity: 0;
  left: 120%;
  -webkit-transform: rotate(40deg);
          transform: rotate(40deg);
}
/* Ends */

</style>
</head>
<body>

<!-- <div class="w3-container">

  <div class="w3-light-grey">
    <div id="myBar" class="w3-container w3-green" style="height:24px;width:0%">
    </div>
  </div>

  <p id="myP">Added <span id="demo">0</span> of 10 photos</p>

  <button class="w3-button w3-light-grey" onclick="move();this.disabled='true'">Upload Photos</button> 
  
</div> -->

<!-- DIV TEST -->
<div class="w3-container">

  <div class="w3-light-grey w3-round-xlarge">
    <div id="myBar" class="w3-container w3-blue w3-round-xlarge" style="height:24px;width:80%">
    </div>
  </div>

  <p id="myP">Added <span id="demo">0</span> of 10 photos</p>

  <button class="w3-button w3-light-blue" onclick="move();this.disabled='true'">Upload Photos</button> 
  
</div>

<div class="buttons">
  <div class="container">
      <a href="#" class="btn effect01" target="_blank"><span>Hover</span></a>
  </div>
</div>

   

<script>
function move() {
  var elem = document.getElementById("myBar");   
  var width = 0;
  var id = setInterval(frame, 50);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
      document.getElementById("myP").className = "w3-text-green w3-animate-opacity";
      document.getElementById("myP").innerHTML = "Successfully uploaded 10 photos!";
    } else {
      width++; 
      elem.style.width = width + '%'; 
      var num = width * 1 / 10;
      num = num.toFixed(0)
      document.getElementById("demo").innerHTML = num;
      return false;
    }
  }
}
</script>

</body>
</html>