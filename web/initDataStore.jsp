<%-- 
    Document   : initDataStore
    Created on : 25.10.2012, 08:07:33
    Author     : christianlinde
--%>

<%@page import="java.util.Map"%>
<jsp:useBean id="dataStore" class="java.util.HashMap" scope="session"/>

<% 
/*
   Integer tmpArtNr = 123456;
   data.DataStore myTmpStore = new data.DataStore();
   myTmpStore.setName("Kindle Fire HD");
   myTmpStore.setArtNr(tmpArtNr);
   myTmpStore.setPrice(199.00);
   myTmpStore.setCount(10);
   myTmpStore.setDescription("17 cm (7 Zoll), Dualband -WLAN über zwei Antennen, "
                            +"HD-Display, Dolby-Audio-Technologie, 16 GB oder 32 GB");
   dataStore.put(tmpArtNr, myTmpStore); tmpArtNr++;

   myTmpStore = new data.DataStore();
   myTmpStore.setName("Dell Latitude ST T11");
   myTmpStore.setArtNr(tmpArtNr);
   myTmpStore.setPrice(729.00);
   myTmpStore.setCount(111);
   myTmpStore.setDescription("25,7 cm (10,1 Zoll) Tablet-PC (Intel Atom Z670, 1,5GHz, "
                            +"2GB RAM, 32GB SSD, Intel 600, Win 7 Pro)");
   dataStore.put(tmpArtNr, myTmpStore); tmpArtNr++;
   
   myTmpStore = new data.DataStore();
   myTmpStore.setName("JAGUAR XF SPORTBRAKE");
   myTmpStore.setArtNr(tmpArtNr);
   myTmpStore.setPrice(48.550);
   myTmpStore.setCount(2);
   myTmpStore.setDescription("3.0 Liter V6 Diesel S 275 PS (202kW): Kraftstoffverbrauch: "
                            +"innerorts 8,6 l/100km, außerorts 4,9 l/100km, kombiniert "
                            +"6,2 l/100km.CO2-Emission: 163 g/km; Effizienzklasse B");
   dataStore.put(tmpArtNr, myTmpStore); tmpArtNr++;
   */
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <h1>Hello World!</h1>
  </body>
</html>
