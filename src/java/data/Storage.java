/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.*;

/**
 * 
 * @author christianlinde
 */
public class Storage {

    /*
     * should be thread safe too:
     * http://www.theserverside.de/singleton-pattern-in-java/
     */
    private static Storage instance = new Storage();

    private HashMap<Integer, Product> products;
    private HashMap<Integer, User> users;

    private void addDefaultData() {
        // add some users
        // add some products
        Integer tmpArtNr = 123456;

        Product myTmpStore = new Product();
        myTmpStore.setName("Kindle Fire HD");
        myTmpStore.setId(tmpArtNr);
        myTmpStore.setPrice(199.00f);
        myTmpStore.setManufacturer("Amazon");
        myTmpStore
                .setDescription("17 cm (7 Zoll), Dualband -WLAN über zwei Antennen, "
                        + "HD-Display, Dolby-Audio-Technologie, 16 GB oder 32 GB");
        products.put(tmpArtNr, myTmpStore);
        tmpArtNr++;

        myTmpStore = new Product();
        myTmpStore.setName("Dell Latitude ST T11");
        myTmpStore.setId(tmpArtNr);
        myTmpStore.setPrice(729.00f);
        myTmpStore.setManufacturer("Dell");
        myTmpStore
                .setDescription("25,7 cm (10,1 Zoll) Tablet-PC (Intel Atom Z670, 1,5GHz, "
                        + "2GB RAM, 32GB SSD, Intel 600, Win 7 Pro)");
        products.put(tmpArtNr, myTmpStore);
        tmpArtNr++;

        myTmpStore = new Product();
        myTmpStore.setName("JAGUAR XF SPORTBRAKE");
        myTmpStore.setId(tmpArtNr);
        myTmpStore.setPrice(48.550f);
        myTmpStore.setManufacturer("JAGUAR");
        myTmpStore
                .setDescription("3.0 Liter V6 Diesel S 275 PS (202kW): Kraftstoffverbrauch: "
                        + "innerorts 8,6 l/100km, außerorts 4,9 l/100km, kombiniert "
                        + "6,2 l/100km.CO2-Emission: 163 g/km; Effizienzklasse B");
        products.put(tmpArtNr, myTmpStore);
        tmpArtNr++;
    }

    private Storage() {
        products = new HashMap<Integer, Product>();
        users = new HashMap<Integer, User>();

        addDefaultData();
    }

    public static Storage getInstance() {
        return instance;
    }
}
