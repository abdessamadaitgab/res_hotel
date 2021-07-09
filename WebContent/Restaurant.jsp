<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
}
img {  
  width : 750px;  
  vertical-align:middle;
  float:left;
}

body {
  background: url("hotel.jpeg") center center no-repeat;

background-color:lightblue;
   background-size: cover;
  width: 100vw;
  height: 100vh;
  display: grid;
  align-items: center;
  justify-items: center;
  font-size: 12pt;
  font-family: "Spartan";
  color: #2A293E;
}

.contact-us {
  background: #f8f4e5;
  padding: 50px 100px;
  border-top: 10px solid #f45702;
}

label, input, textarea {
  display: block;
  width: 100%;
  font-size: 12pt;
  line-height: 24pt;
  font-family: "Spartan";
}

input {
  margin-bottom: 24pt;
}

h3 {
  border: solid;
  background-color:transparent;
  font-weight: normal;
  font-size: 16pt;
  line-height: 24pt;
  font-style: italic;
  margin: 0 0 0.5em 0;
}

span {
  font-size: 8pt;
}

em {
  color: #f45702;
  font-weight: bold;
}

input, textarea {
  border: none;
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 2px;
  background: #f8f4e5;
  padding-left: 5px;
  outline: none;
}

input:focus, textarea:focus {
  border: 1px solid #6bd4b1;
}

textarea {
  resize: none;
}

button {
  display: block;
  float: right;
  line-height: 24pt;
  padding: 0 20px;
  border: none;
  background: #f45702;
  color: white;
  letter-spacing: 2px;
  transition: 0.2s all ease-in-out;
  border-bottom: 2px solid transparent;
  outline: none;
}
button:hover {
  background: GREEN;
  color: #f45702;
  border-bottom: 2px solid #f45702;
}

::selection {
  background: #ffc7b8;
}

input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus,
textarea:-webkit-autofill,
textarea:-webkit-autofill:hover,
textarea:-webkit-autofill:focus {
  border: 1px solid #6bd4b1;
  -webkit-text-fill-color: #2A293E;
  -webkit-box-shadow: 0 0 0px 1000px #f8f4e5 inset;
  transition: background-color 5000s ease-in-out 0s;
}
#menu ul {
 margin:0;
 padding:0;
 list-style-type:none;
 text-align:center;
 }
#menu li {
 float:left;
 margin:auto;
 padding:0;
 background-color:#f45702;
 }
#menu li a {
 display:block;
 width:200px;
 color:white;
 text-decoration:none;
 padding:5px;
 }
#menu li a:hover {
 color:#FFD700;
 }
 #menu ul li ul {
 display:none;
 }
 #menu ul li:hover ul {
 display:block;
 }
#menu li:hover ul li {
 float:none;
 }
 #menu li ul {
 position:absolute;
 }
 

</style>
<meta charset="UTF-8">
<title>Page d'accueil</title>
</head>
<body>
<jsp:include page="/entete.jsp" />
</body>
<div class="div-categoryContainer">

  <img src="restaurant.jpeg" alt="" width="600" height="600" />
  
  <div class="paragraph-right">
  <div class="contact-us">
  
  <center>
  <h3> <h2>Restaurant :</h2>
  
<p>
Dans le restaurant, d’ambiance rustique, décoré avec goût et avec vue sur la vallée, dégustez les plats d’une cuisine typique andorrane ainsi que des plats internationaux, au menu ou à la carte.

Chaque jour, nous proposons un menu varié pour le déjeuner et le dîner, à base de produits frais et fait maison.
</p>
<h2> Menu Spécial </h2>
HOMMOS BEYROUTI <br>
Purée de pois chiches / graines de sésame / Citron / Ail / Persil plat / Cébettes<br>

50DHs<br>
HOMMOS À L'AVOCAT<br>
Purée de pois chiche/ Tahina / Citron / Huile d'olive<br>

50DHs<br>
BABA GHANOUJ<br>
Caviar dʼaubergines rôties / Graines de sésame / Citron<br>

50DHs<br>
LABNEH<br>
Fromage blanc affiné/ huile dʼolive/ail/ thym sauvage / olive noire / menthe fraiche<br>

50DHs<br>
WARAK ENAB<br>
Feuilles de vigne farcies avec du riz / Tomates / Persil plat / Citron<br>

50DHs<br>

</h3>
</center>
</div>
</div>
</div>

</html>