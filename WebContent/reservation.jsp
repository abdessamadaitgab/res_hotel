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
  font-weight: normal;
  font-size: 10pt;
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
  background: inherit;
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

</style>
<meta charset="UTF-8">
<title>Connexion </title>
</head>
<body>
<div class="contact-us">
  <form method="POST" action="ResClient">
  
  <h1>
  <fieldset>
              Bienvenu Monsieur/Madame <% out.println(request.getSession().getAttribute("name")); %> <br>
               Ravie de votre visite!! 
  
  </fieldset>
  
  
  </h1>
     
    <label for="ff">Date Arrivée <em>&#x2a;</em></label><input id="da" name="da" required type="date" />
    <label for="PASSWORD">Date de Départ <em>&#x2a;</em></label><input id="dd" name="dd"  type="date" required type="date" />
      <label for="da">Chambres a reserver <em>&#x2a;</em></label>
      <table border="1" bgcolor="lightblue" >
      <tr><th> type de logement </th> <th>Tarif Par nuit</th><th>nombre de chambre </th></tr>
            <tr><td> chambre seule </td> <td>1000 DHS</t><th><input type="number" name="numbersingle" max="4" size="3" value="0"></th></tr>
      
                  <tr><td> chambre double </td> <td> 1500 DHS</t><td><input type="number" name="numberdouble" max="4" size="3" min="0" value="0"></td></tr>
                  <tr><td> chambre triple </td> <td> 2000 DHS</t><th><input type="number" name="numbertriple" max="4" size="3" min="0" value="0"></th></tr>
                  <tr><td> chambre quadruple </td> <td> 2500 DHS</t><th><input type="number" name="numberquadruple" max="4" size="3"min="0" value="0"></th></tr>
      
      
      
      </table>
 
    <label for="da">Nombre Adultes <em>&#x2a;</em></label><input id="na" name="na" required type="number" max="5" value="0" />
        <label for="da">Nombre Enfants <em>&#x2a;</em></label><input id="ne" name="ne" required type="number" max="5" value="0"/>
        
    
      
  
    <h3>
    </h3>
    <button id="customerreservation" name="customerreservation" value="RESERVATION">RESERVATION</button>
    
  </form>
          <button id="" name="customerreserva" value="RESERVA" > <a href="mnespace.jsp">ACCEDER A MON ESPACE</a></button>
  
</div>

</body>
</html>