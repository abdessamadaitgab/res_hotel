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
  padding: 40px 30px;
  border-top: 70px solid ;
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
</head>
<body>
<jsp:include page="/entete.jsp" />
<form action="">
<div class="contact-us">

<h3> <center>L’hôtel EAGLES vous propose toute une gamme de services haut-de-gamme. Ainsi, les clients bénéficient d’un service attentionné que ce soit dans l’intimité de leur chambre ou dans l'ensemble de l’hôtel.<br>
Services :<br>
Réception ouverte 7 jours/7 de 7h à 21h<br>
Personnel multilingue<br>
Petit déjeuner servi en chambre à toute heure de la journée<br>
Room service : disponible du lundi au samedi de midi à 21h avec un choix d’Encas sous forme de Plateau Repas avec Menu & tarif proposé en chambre.<br>
Bagagerie<br>
Pressing<br>
Voiture avec chauffeur<br>
Parking à proximité...<br>

L’hôtel se charge de la réservation de taxis et des transferts aéroports / gares / hôtel.<br>

Le personnel de la réception saura vous conseiller et vous prodiguer de précieuses recommandations pour vos sorties à Paris, de la réservation d’un restaurant ou d’un spectacle ou les lieux à découvrir absolument lors de votre séjour dans la capitale.<br>

 
Horaire de l'hôtel :<br>

7 jours/7 de 7h à 21h<br>

Sachant qu’un code secret vous sera communiqué sur place lors du check-in ou bien par sms ou mail pour accéder à l’hôtel  si vous arriviez à une heure tardive en dehors des horaires de réception.</h3>
</center>
</div>
</form>

</body>
</html>