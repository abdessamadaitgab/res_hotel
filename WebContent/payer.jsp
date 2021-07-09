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
<title>Paiement</title>
</head>
<body>
<form method="post" action="Paiement">
<div class="contact-us">

	<legend><h1>Informations CB</h1></legend>
    
      
          <legend>Type de carte bancaire</legend>
          <select name="pets" id="typecarte">
           <option value="visa"> VISA</option>
    <option value="Mastercard">MASTERCARD</option>
    
         </select>
            
          
        </fieldset><br><br>
      
        <label for=numero_de_carte>Numero de carte</label>
        <input id=numero_de_carte name=numero_de_carte type=number maxlength="16" size="16" required placeholder="entrez les 16 chiffres">
      <br>
      
        <label for=securite>Code securite</label>
        <input id=securite name=securite type=number size="3" maxlength="3" placeholder="entrez les 3 chiffres" required>
      <br>
       
        <label for=securite>date d'expiration</label>
        <input id=nb name=securite type=month required>
      <br>
      
        <label for=nom_porteur>Nom du porteur</label>
        <input id=nom_porteur name=nom_porteur type=text placeholder="Meme nom que sur la carte" required>
      </<br>
       <label for=nom_porteur>Montant</label>
        <input id=nom_porteur name=montant readonly="readonly" type=text value= <% out.println(request.getSession().getAttribute("montant")); %>  required>
      </<br>
    
  <br><br>

  
    <button name="annuler" value="Annuler la reservation"> Annuler la reservation</button>
 </center>
</form>

<form action="Resume" method="post">    <center><button name="resaa" value="voir le resume de reservation">voir le resume de reservation </button>

</form>
<div class="contact-us">

</body>
</html>