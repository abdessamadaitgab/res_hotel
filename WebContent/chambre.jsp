<!DOCTYPE html>
<html>
<head>
<style>
* {
  margin: 0;
  padding: 0;
}

body {
  background-color: lightblue;
  background-size: cover;
  width: 100vw;
  height: 100vh;
  
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
#menu{

position:center;
  display: grid;
  align-items: center;
  justify-items: center;
}

#menu ul {
 position:center;
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

div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}

* {
  box-sizing: border-box;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 24.99999%;
}

@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</head>
<body>
<center>
<jsp:include page="/entete.jsp" />
</center>
<br>
<br>





  <div class="contact-us">
<center><h3>NOS CHAMBRES</h3></center>
<br>
<br>
<br>
<br>
<div class="responsive">
  <div class="gallery">
      <img src="singleroom.jpeg" alt="Cinque Terre" width="600" height="400">

    <div class="desc">
Les chambres simples font 10 metres carres (salle de bain comprise) avec un lit simple. Elle donne sur notre petite cour intérieure au calme. Les salles de bains sont equipees d'une douche, de toilettes et d'un seche-cheveux. Nous vous rappelons que les chambres doubles peuvent accueillir un maximum de deux personnes et qu'il est interdit d'accueillir trois personnes ou plus dans une chambre double. </div>  </div>
</div>


<div class="responsive">
  <div class="gallery">
      <img src="chambredouble.jpeg" alt="Forest" width="600" height="400">
    <div class="desc">
Les chambres Double ont une surface de 15m2 (salle de bain comprise) avec un grand lit. La salle de bain est equipee d’une douche, d'un WC et d'un seche-cheveux. Nous vous rappelons que les chambres doubles peuvent accueillir deux personnes maximum et qu'il est interdit de loger trois personnes ou plus dans une chambre double.</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
      <img src="chambretriple.jpeg" alt="Northern Lights" width="600" height="400">
    <div class="desc">Ces chambres disposent d’un lit double et d’un lit individuel. Elle est ideale pour un couple avec un enfant.

En famille, seul ou en couple, nous disposons de chambres adaptées à vos besoins.
Elles sont toutes decorees de façon simple mais agreable, avec un mur en bois comme tete de lit et avec des meubles en bois massif.</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
      <img src="chambrequadruple.jpeg" alt="Mountains" width="600" height="400">
    <div class="desc">
Les chambres Quadruples Conforts ont une surface de 22m2 (salle de bain comprise) et possedent 1 lit double et deux lits single pour quatre personnes. Elles possèdent une tres belle vue sur la Gare de Sale. La salle de bain est equipee d’un bain, WC et seche-cheveux.</div>
  </div>
</div>

<div class="clearfix"></div>
</div>


</body>
</html>
