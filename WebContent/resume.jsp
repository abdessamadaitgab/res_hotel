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

body {
  background: url("hotel.jpeg") center center no-repeat;
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
  background: transparent;
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
<title>Resumé du reservation</title>
</head>
<body>
<div class="contact-us">
<h3><u><i> <center>Résumé de la réservation</center></i></u></h3>
<h3>
<center>
    <img src="hotellogo.jpg" alt="Northern Lights" width="300" height="300">
</center>
</h3>
<h3><center>
<table border="1" bgcolor="#f45702">
<tr> <th> numero de reservation:</th> <th> <% out.println(request.getSession().getId()); %></th> </tr>
<tr> <th> nom complet du client</th> <th><% out.println(request.getSession().getAttribute("name")); %>  </th> </tr>
<tr> <th> montant total</th> <th> <% out.println(request.getSession().getAttribute("montant")); %> DHS</th> </tr>



</table>
</h3>
<h3> <center>
Chère Madame, Cher Monsieur, Permettez-nous de vous souhaiter la bienvenue au BEATRICE HOTEL. <br>
Nous avons le plaisir de vous accueillir dans notre hotel 
 avec autant de joie que d'émotion.</center></h3>
</div>
<button ><a href ="accueil.jsp"> Quitter </a></button>

</body>
</html>